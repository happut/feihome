package com.feihome.support.polymerization.dao.impl.mapper;

import java.util.List;

import com.feihome.model.TPolymerizationElement;

public interface PolymerizationMapper {
    public void createPolymerizationelement(TPolymerizationElement element);

    public int getPolymerizationElementsCountByType(int type);

    public TPolymerizationElement getPolymerizationTopOneElementByType(int type);

    public TPolymerizationElement getPolymerizationTopOneElementByOrginId(int type,
            String orginId);

    public List<TPolymerizationElement> getPolymerizationElementsByType(int type);
}
