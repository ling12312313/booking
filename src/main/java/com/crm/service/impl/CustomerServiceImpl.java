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
//        page 对象将存储分页数据和分页参数（如当前页数、总记录数、每页记录数等）
        Page<flight> page = new Page<flight>();
//         设置每页大小
        page.setSize(5);

        vo.setSize(5);
        // 判断当前页
        page.setPage(vo.getPage());
//        从 QueryVo 获取当前页号。
//vo.getSize()一页有多少行，vo.getPage()初始化为1。获得当前行
        vo.setStartRow((vo.getPage() - 1) * vo.getSize());

//        设置总记录数量
        page.setTotal(customerDao.customerCountByQueryVo(vo.getTakeoff_time(), vo.getStart_place(), vo.getEnd_place()));
//        获得当前页的记录数据
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
