package com.crm.service.impl;

import com.common.utils.Page;
import com.crm.mapper.CustomerDao;
import com.crm.pojo.QueryVo;
import com.crm.pojo.flight;
import com.crm.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CustomerServiceImpl implements CustomerService {
    @Autowired
    private CustomerDao customerDao;

    //通过三个条件查询分页对象
    @Override
    public Page<flight> selectPageByQueryVo(QueryVo vo) {
        Page<flight> page = new Page<flight>();

        page.setSize(5);

        vo.setSize(5);
        // 判断当前页
//		if (vo != null) {
//			if (null != vo.getPage()) {
        page.setPage(vo.getPage());
        vo.setStartRow((vo.getPage() - 1) * vo.getSize());
//			}
//			if(null!=vo.getCustName()&&!"".equals(vo.getCustName().trim())) {
//				vo.setCustName(vo.getCustName().trim());
//			}
//			if(null!=vo.getCustSource()&&!"".equals(vo.getCustSource().trim())) {
//				vo.setCustSource(vo.getCustSource().trim());
//			}
//			if(null!=vo.getCustIndustry()&&!"".equals(vo.getCustIndustry().trim())) {
//				vo.setCustIndustry(vo.getCustIndustry().trim());
//			}
//			if(null!=vo.getCustLevel()&&!"".equals(vo.getCustLevel().trim())) {
//				vo.setCustLevel(vo.getCustLevel().trim());
//			}
        //总条数

        page.setTotal(customerDao.customerCountByQueryVo(vo.getTakeoff_time(), vo.getStart_place(), vo.getEnd_place()));
        page.setRows(customerDao.selectCustomerListByQueryVo(vo.getTakeoff_time(), vo.getStart_place(), vo.getEnd_place(), vo.getStartRow(), vo.getSize()));
        //	}
        //每页数

        return page;
    }


    @Override
    public flight selectFlightById(int id) {
        flight flight = customerDao.selectFlightById(id);
        return flight;
    }


    @Override
    public void updateFlightById(flight flight) {
        customerDao.updateFlightById(flight);
    }


    @Override
    public void deleteFlightById(int id) {
        customerDao.deleteflghtById(id);
    }


    @Override
    public void insertFlight(flight flight) {
        customerDao.insertFlight(flight);
    }


}
