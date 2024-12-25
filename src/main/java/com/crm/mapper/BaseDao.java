package com.crm.mapper;

import com.crm.pojo.flight;

import java.util.List;

public interface BaseDao {
    //出发地
    public List<flight> selectstart();

    //目的地
    public List<flight> selectend();

}
