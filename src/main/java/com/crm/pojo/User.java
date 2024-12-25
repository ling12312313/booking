package com.crm.pojo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.io.Serializable;

@Getter
@Setter
@ToString
public class User implements Serializable {

    private static final long serialVersionUID = 2L;
    private Integer id; //id
    private String idcard;//身份证
    private String name;//名字
    private String password;//密码
    private String telnumber;//电话
    private String email;//邮箱
    private int status;//身份 0为用户，1为管理员


}
