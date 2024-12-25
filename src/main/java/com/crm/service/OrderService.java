package com.crm.service;

import com.common.utils.Page;
import com.crm.pojo.QueryVo;
import com.crm.pojo.User;
import com.crm.pojo.order_tickect;

import java.util.List;


public interface OrderService {
    //下订单
    public void insertOrder(order_tickect order_tickect, User user);

    //更新票数
    public void updateNumber(int id, String tickect_type);

    //查看订单返回页面
    public Page<order_tickect> selectOrderPageByQueryVo(QueryVo vo, String name, String idcard);

    //后台遍历订单
    public List<order_tickect> selectOrder(String name, String idcard);

    //查订单详情
    public order_tickect selectOrderById(int id);
}
