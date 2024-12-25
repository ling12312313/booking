package com.crm.service.impl;

import com.common.utils.Page;
import com.crm.mapper.orderDao;
import com.crm.pojo.QueryVo;
import com.crm.pojo.User;
import com.crm.pojo.order_tickect;
import com.crm.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {
    @Autowired
    private orderDao orderDao;

    //存订单
    @Override
    public void insertOrder(order_tickect order_tickect, User user) {
        order_tickect.setName(user.getName());
        order_tickect.setIdcard(user.getIdcard());
        order_tickect.setStatus("已付款");
        orderDao.insertOrder(order_tickect);
    }

    //查订单详情
    @Override
    public order_tickect selectOrderById(int id) {
        order_tickect order_tickect = orderDao.selectOrderById(id);
        return order_tickect;
    }

    //更新票数
    @Override
    public void updateNumber(int id, String tickect_type) {

        if (tickect_type.equals("经济舱"))
            orderDao.updateEconomy(id);
        else if (tickect_type.equals("商务舱"))
            orderDao.updateBussiness(id);

    }

    @Override
    public Page<order_tickect> selectOrderPageByQueryVo(QueryVo vo, String name, String idcard) {
        Page<order_tickect> page = new Page<order_tickect>();

        page.setSize(5);

        vo.setSize(5);

        page.setPage(vo.getPage());
        vo.setStartRow((vo.getPage() - 1) * vo.getSize());


        page.setTotal(orderDao.OrderCountByQueryVo(vo.getTakeoff_time(), vo.getStart_place(), vo.getEnd_place(), name, idcard));
        page.setRows(orderDao.selectOrderListByQueryVo(vo.getTakeoff_time(), vo.getStart_place(), vo.getEnd_place(), vo.getStartRow(), vo.getSize(), name, idcard));
        //	}
        //每页数

        return page;
    }

    @Override
    public List<order_tickect> selectOrder(String name, String idcard) {


        return orderDao.selectOrder(name, idcard);
    }


}