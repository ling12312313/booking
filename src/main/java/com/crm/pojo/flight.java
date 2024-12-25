package com.crm.pojo;


import lombok.Getter;
import lombok.NonNull;
import lombok.Setter;
import lombok.ToString;


@Getter
@Setter
@ToString
public class flight {
    @NonNull
    private int id;//id号
    @NonNull
    private String fly_name;//航班号
    @NonNull
    private String type;//机型
    //    //前台传后台
//    @DateTimeFormat(pattern = "yyyy-MM-dd")
//    //后台传前台
//    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    @NonNull
    private String takeoff_time;
    //    @DateTimeFormat(pattern ="yyyy-MM-dd")
//    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    @NonNull
    private String land_time;
    @NonNull
    private String start_place;
    @NonNull
    private String end_place;
    @NonNull
    private int economy_tickect;//经济舱票数
    @NonNull
    private int bussiness_tickect;//商务舱票数
    @NonNull
    private float price;
    @NonNull
    private int discount;//折扣

}
