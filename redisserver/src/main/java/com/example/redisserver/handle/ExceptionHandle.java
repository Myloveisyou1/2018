package com.example.redisserver.handle;

import com.example.redisserver.common.Result;
import com.example.redisserver.common.ResultUtil;
import com.example.redisserver.enums.ResultEnum;
import com.example.redisserver.exception.RedisException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.TypeMismatchException;
import org.springframework.web.bind.MissingServletRequestParameterException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @Descript: 异常捕获
 * @Author: liuyingjie
 * @Date: create in 2018/5/7 0007 11:27
 */
@ControllerAdvice
public class ExceptionHandle {

    private static final Logger logger = LoggerFactory.getLogger(ExceptionHandle.class);

    @ExceptionHandler(value = Exception.class)
    @ResponseBody
    public Result handle(Exception e){

        if(e instanceof RedisException){
            RedisException farmException = (RedisException) e;
            return ResultUtil.error(farmException.getCode(),farmException.getMessage());
        }else{
            logger.info("系统异常{}",e);
            return ResultUtil.error(ResultEnum.UNKNOW_ERROR.getCode(),ResultEnum.UNKNOW_ERROR.getMsg());
        }
    }

    @ExceptionHandler(value = TypeMismatchException.class)
    @ResponseBody
    public Result typeMisMatchException(TypeMismatchException ex) {

        logger.info("参数类型错误异常{}",ex);

        return ResultUtil.error(ResultEnum.TYPE_MIS_MATCH.getCode(),"参数"+ex.getPropertyName()+"类型应为"+ex.getRequiredType());

    }

    @ExceptionHandler({MissingServletRequestParameterException.class})
    @ResponseBody
    public Result requestMissingServletRequest(MissingServletRequestParameterException ex){

        logger.info("参数不全异常{}",ex);

        return ResultUtil.error(ResultEnum.EMPTY_ERROR.getCode(), "参数" + ex.getParameterName()+"不能为空");
    }
}
