package com.example.redisserver.enums;

/**
 * @Author: 刘英杰
 * @Description: 返回值枚举
 * @Date: Created in 2017/12/26 13:38
 */
public enum ResultEnum {
    UNKNOW_ERROR(-1,"系统繁忙,请稍后再试!"),
    EMPTY_ERROR(404,"参数不全"),
    SUCCESS(200,"成功"),
    ERROR(201,"失败"),
    NOT_EXIST(202,"code不存在"),
    TYPE_MIS_MATCH(203,"参数类型不匹配");
    private Integer code;

    private String msg;

    ResultEnum(Integer code, String msg) {
        this.code = code;
        this.msg = msg;
    }

    public Integer getCode() {
        return code;
    }

    public String getMsg() {
        return msg;
    }
}
