package com.crm.service.impl;


import com.crm.mapper.BaseDao;
import com.crm.pojo.flight;
import com.crm.service.BaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BaseServiceImpl implements BaseService {
    @Autowired
    private BaseDao baseDao;

    @Override
    public List<flight> selectstart() {
        return baseDao.selectstart();
    }


    @Override
    public List<flight> selectend() {
        return baseDao.selectend();
    }
}
