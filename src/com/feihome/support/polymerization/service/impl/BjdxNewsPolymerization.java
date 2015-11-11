package com.feihome.support.polymerization.service.impl;

import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang.math.NumberUtils;
import org.apache.commons.lang.time.DateUtils;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Repository;

import com.feihome.model.TPolymerizationElement;
import com.feihome.support.polymerization.service.IPolymerization;

@Repository
public class BjdxNewsPolymerization implements IPolymerization {

	@Override
	public List<TPolymerizationElement> pullPolymerizationInfo() {
		List<TPolymerizationElement> dataList = new ArrayList<TPolymerizationElement>();
		Document doc;
		try {
			doc = Jsoup.connect("http://www.bjdx.gov.cn/zmhd/wsgssx/").get();

			Elements select = doc.select(".zfwj_ul li");
			for (org.jsoup.nodes.Element e : select) {
				TPolymerizationElement element = new TPolymerizationElement();
				
				String url = e.child(0).attr("href");
				String date = e.child(1).text().replace("[", "").replace("]", "");
				
				try {
					element.setDate(DateUtils.parseDate(date, new String[]{"yyyy-MM-dd"}));
				} catch (ParseException e1) {
					element.setDate(null);
				}
				
				element.setTitle(e.child(0).attr("title"));
				element.setType(1);
				element.setUrl("http://www.bjdx.gov.cn" + url);
				element.setId(NumberUtils.toInt(url.substring(
						url.lastIndexOf("/") + 1, url.lastIndexOf("."))));
				dataList.add(element);
			}

		} catch (IOException e1) {
			e1.printStackTrace();
		}
		return dataList;
	}
}
