package com.crm.pojo;
//订单

import lombok.Getter;
import lombok.NonNull;
import lombok.Setter;

@Setter
@Getter

public class order_tickect {
    @NonNull
    private int id;
    @NonNull
    private String fly_name;//航班号
    //    @DateTimeFormat(pattern = "yyyy-MM-dd")
//    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    @NonNull
    private String type;//飞机型号
    @NonNull
    private String takeoff_time;
    //    @DateTimeFormat(pattern = "yyyy-MM-dd")
//    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    @NonNull
    private String land_time;
    @NonNull
    private String start_place;
    @NonNull
    private String end_place;
    @NonNull
    private String tickect_type;//机票类型
    @NonNull
    private int num;//票数
    @NonNull
    private float price;
    @NonNull
    private String name;//订购人
    @NonNull
    private String idcard;//身份证
    @NonNull
    private String status;//付款状态

    @Override
    public String toString() {
        return "order_tickect{" +
                "fly_name='" + fly_name + '\'' +
                ", type='" + type + '\'' +
                ", takeoff_time='" + takeoff_time + '\'' +
                ", land_time='" + land_time + '\'' +
                ", start_place='" + start_place + '\'' +
                ", end_place='" + end_place + '\'' +
                ", tickect_type='" + tickect_type + '\'' +
                ", num=" + num +
                ", price=" + price +
                ", name='" + name + '\'' +
                ", idcard='" + idcard + '\'' +
                ", status='" + status + '\'' +
                '}';
    }
}
