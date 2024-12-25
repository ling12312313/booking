package com.crm.service;

import com.crm.pojo.flight;

import java.util.List;

public interface BaseService {
    public List<flight> selectstart();

    public List<flight> selectend();
}
