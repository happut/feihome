package com.feihome.support.polymerization.dao.impl.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.feihome.model.TPolymerizationElement;

public interface PolymerizationMapper {
    public void createPolymerizationelement(TPolymerizationElement element);

    public int getPolymerizationElementsCountByType(int type);

    public TPolymerizationElement getPolymerizationTopOneElementByType(int type);

    public TPolymerizationElement getPolymerizationTopOneElementByOrginId(int type,
            String orginId);

    public List<TPolymerizationElement> getPolymerizationElementsByType(int type);

    /**
     * @param type
     * @param orgins
     * @return
     * @author wfei
     * @time 2016-9-1下午3:53:02
     */
    public int getPolymerizationElementsCountByTypeAndOrginIds(@Param("type") int type,
            @Param("orgins")String[] orgins);
}
