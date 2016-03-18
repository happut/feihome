package com.feihome.support.polymerization.dao.impl.mapper;

import java.util.List;
import java.util.Map;

import com.feihome.model.TPolymerizationElement;

public interface PolymerizationMapper {
	public void createPolymerizationelement(TPolymerizationElement element);

	public int getPolymerizationElementsCountByType(int type);

	public TPolymerizationElement getPolymerizationTopOneElementByType(int type);

	public List<TPolymerizationElement> getPolymerizationElementsByType(int type);
}
