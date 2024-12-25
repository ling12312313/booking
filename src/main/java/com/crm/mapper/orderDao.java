package com.crm.mapper;

import com.crm.pojo.order_tickect;
import org.apache.ibatis.annotations.Param;

import java.util.List;


public interface orderDao {
    //总条数
    public Integer OrderCountByQueryVo(@Param("time") String time, @Param("start_place") String start_place, @Param("end_place") String end_place,
                                       @Param("name") String name, @Param("idcard") String idcard);

    //结果集
    public List<order_tickect> selectOrderListByQueryVo(@Param("time") String time, @Param("start_place") String start_place, @Param("end_place") String end_place,
                                                        @Param("startRow") int startRow, @Param("size") int size, @Param("name") String name, @Param("idcard") String idcard);

    //下订单
    public void insertOrder(order_tickect order_tickect);

    //更新经济舱票数
    public void updateEconomy(int id);

    //更新商务舱票数
    public void updateBussiness(int id);

    //根据id查询
    public order_tickect selectOrderById(int id);

    //查询订单
    public List<order_tickect> selectOrder(@Param("name") String name, @Param("idcard") String idcard);
}
