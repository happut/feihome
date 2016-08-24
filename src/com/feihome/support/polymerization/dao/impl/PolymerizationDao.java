package com.feihome.support.polymerization.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Repository;

import com.feihome.model.TPolymerizationElement;
import com.feihome.support.polymerization.dao.impl.mapper.PolymerizationMapper;
import com.feihome.support.utils.CommonUtils;

@Repository
public class PolymerizationDao {

    @Resource
    private PolymerizationMapper mapper;

    public void createPolymerizationelement(TPolymerizationElement ele) {
        mapper.createPolymerizationelement(ele);
    }

    public void createPolymerizationelements(
            List<TPolymerizationElement> elements) {
        for (TPolymerizationElement ele : elements) {
            if (StringUtils.isBlank(ele.getId())) {
                ele.setId(CommonUtils.generateUUID());
            }
            createPolymerizationelement(ele);
        }
    }

    public int getPolymerizationElementsCountByType(int type) {
        return mapper.getPolymerizationElementsCountByType(type);
    }

    public TPolymerizationElement getPolymerizationTopOneElementByType(int type) {
        return mapper.getPolymerizationTopOneElementByType(type);
    }

    public List<TPolymerizationElement> getPolymerizationElementsByType(int type) {
        return mapper.getPolymerizationElementsByType(type);
    }
}
