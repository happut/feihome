package com.feihome.support.polymerization.service.impl;

import java.io.IOException;
import java.util.List;

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
		Document doc;
		try {
			doc = Jsoup.connect("http://www.bjdx.gov.cn/zmhd/wsgssx/").get();

		Elements select = doc.select(".zfwj_ul li");
		for(org.jsoup.nodes.Element e : select){
			System.out.println(e.child(0).attr("title"));
			System.out.println("http://www.bjdx.gov.cn"+e.child(0).attr("href"));
			System.out.println(e.child(1).text());
		}
		
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		return null;
	}
}
