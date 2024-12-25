package com.crm.mapper;

import com.crm.pojo.flight;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CustomerDao {
    //总条数
    public Integer customerCountByQueryVo(@Param("time") String time, @Param("start_place") String start_place, @Param("end_place") String end_place);

    //结果集
    public List<flight> selectCustomerListByQueryVo(@Param("time") String time, @Param("start_place") String start_place, @Param("end_place") String end_place,
                                                    @Param("startRow") int startRow, @Param("size") int size);

    //根据id查询
    public flight selectFlightById(int id);

    //根据id更新
    public void updateFlightById(flight flight);

    //删除
    public void deleteflghtById(int id);

    //插入
    public void insertFlight(flight flight);
}
