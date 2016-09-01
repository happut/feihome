package com.feihome.support.polymerization.service.impl;

import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang3.math.NumberUtils;
import org.apache.commons.lang3.time.DateUtils;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.feihome.model.TPolymerizationElement;
import com.feihome.support.polymerization.dao.impl.PolymerizationDao;
import com.feihome.support.polymerization.service.IPolymerization;

@Repository
public class BjdxNewsPolymerization implements IPolymerization {

    @Autowired
    @Qualifier("polymerizationDao")
    private PolymerizationDao polymerizationDao;

    private String baseUrl = "http://www.bjdx.gov.cn/jrdx/dxxw/zwxx/";

    private String articleUrl = "http://www.bjdx.gov.cn";

    @Override
    public List<TPolymerizationElement> pullPolymerizationInfo() {
        return getPagableTPolymerizationElements(baseUrl, 0);
    }

    public List<TPolymerizationElement> getPagableTPolymerizationElements(
            String baseUrl, int page) {
        List<TPolymerizationElement> dataList = new ArrayList<TPolymerizationElement>();
        List<String> orginids = new ArrayList<String>();
        try {
            String spiderUrl = "";
            // 抽取当前页
            if (page == 0) {
                spiderUrl = baseUrl;
            } else {
                spiderUrl = baseUrl + "index" + page + ".html";
            }
            Document doc = Jsoup.connect(spiderUrl).get();
            Elements select = doc.select(".article_list li");
            for (Element e : select) {
                TPolymerizationElement element = new TPolymerizationElement();

                String date = e.child(0).text().replace("[", "")
                        .replace("]", "");
                String url = e.child(1).attr("href");

                try {
                    element.setDate(DateUtils.parseDate(date,
                        new String[] { "yyyy-MM-dd" }));
                } catch (ParseException e1) {
                    element.setDate(null);
                }

                element.setTitle(e.child(1).attr("title"));
                element.setType(1);
                if (!url.startsWith("http://")) {
                    element.setUrl(articleUrl + "/" + url);
                    element.setOrginId(url.substring(url.lastIndexOf("/") + 1,
                        url.lastIndexOf(".")));
                } else {
                    element.setUrl(url);
                    element.setOrginId("" + page + e.elementSiblingIndex());
                }
                orginids.add(element.getOrginId());
                dataList.add(element);
            }

            // 如果未查找完毕 继续查找下一页
            if (polymerizationDao
                    .getPolymerizationElementsCountByTypeAndOrginIds(1,
                        orginids.toArray(new String[] {})) == 0) {
                Elements changepage = doc.select(".pagination a");
                Element a = changepage.get(changepage.size() - 2);
                String nextUrl = a.attr("href");
                if (page == NumberUtils.toInt(nextUrl.substring(
                    nextUrl.lastIndexOf("index") + "index".length(),
                    nextUrl.lastIndexOf(".")))) {
                    return dataList;
                }
                List<TPolymerizationElement> nextPageData = getPagableTPolymerizationElements(
                    baseUrl, page + 1);
                if (nextPageData.size() > 0) {
                    dataList.addAll(nextPageData);
                }
            }

        } catch (IOException e) {

        }
        return dataList;
    }
}
