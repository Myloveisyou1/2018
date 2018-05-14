package com.example.redisserver.exception;

import com.example.redisserver.enums.ResultEnum;

/**
 * @Descript:
 * @Author: liuyingjie
 * @Date: create in 2018/5/7 0007 11:25
 */
public class RedisException extends RuntimeException{

    private Integer code;

    public RedisException(ResultEnum resultEnum) {
        super(resultEnum.getMsg());
        this.code = resultEnum.getCode();
    }

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }
}
