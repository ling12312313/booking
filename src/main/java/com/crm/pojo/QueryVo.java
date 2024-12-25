package com.crm.pojo;

import lombok.Getter;
import lombok.Setter;
//前端将查询条件和分页参数发送到后端，后端通过这个类接收这些参数并执行相关查询操作。

@Getter
@Setter
public class QueryVo {


    //查询信息
//	@DateTimeFormat( pattern="yyyy-MM-dd",iso = DateTimeFormat.ISO.DATE)
//	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private String takeoff_time;
    private String start_place;
    private String end_place;
    //当前页
    private Integer page = 1;
    //每页数
    private Integer size;
    //开始行
    private Integer startRow = 0;


}
