package com.crm.service;

import com.common.utils.Page;
import com.crm.pojo.QueryVo;
import com.crm.pojo.flight;

public interface CustomerService {
    public Page<flight> selectPageByQueryVo(QueryVo vo);

    public flight selectFlightById(int id);

    public void updateFlightById(flight flight);

    public void deleteFlightById(int id);

    public void insertFlight(flight flight);
}
