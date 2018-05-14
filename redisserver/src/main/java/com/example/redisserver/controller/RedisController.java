package com.example.redisserver.controller;

import com.example.redisserver.common.Result;
import com.example.redisserver.enums.ResultEnum;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

/**
 * @Descript: redis
 * @Author: liuyingjie
 * @Date: create in 2018/5/7 0007 10:08
 */
@RestController
public class RedisController {

    @Autowired
    private StringRedisTemplate stringRedisTemplate;

    @Autowired
    private RedisTemplate redisTemplate;

    /**
     * 根据code获取code的值
     * @param code
     * @return
     */
    @GetMapping(value = "/getRedisByCode")
    public Result getRedisByCode(@RequestParam(value = "code") String code){

        Result result = new Result();

        if (stringRedisTemplate.hasKey(code)) {
            result.setData(stringRedisTemplate.opsForValue().get(code));
            result.setCode(ResultEnum.SUCCESS.getCode());
            result.setMsg(ResultEnum.SUCCESS.getMsg());
        } else {
            result.setData(null);
            result.setCode(ResultEnum.NOT_EXIST.getCode());
            result.setMsg(ResultEnum.NOT_EXIST.getMsg());
        }
        return result;
    }

    /**
     * 修改/保存redis
     * @param code
     * @param object
     * @return
     */
    @GetMapping(value = "/setRedisByCode")
    public Result setRedisByCode(@RequestParam(value = "code") String code, @RequestParam(value = "value") Object object) {

        Result result = new Result();

        if (stringRedisTemplate.hasKey(code)) {
            stringRedisTemplate.delete(code);
        }

        stringRedisTemplate.opsForValue().set(code,object.toString());

        if (stringRedisTemplate.hasKey(code)) {
            result.setData(stringRedisTemplate.opsForValue().get(code));
            result.setCode(ResultEnum.SUCCESS.getCode());
            result.setMsg(ResultEnum.SUCCESS.getMsg());
        } else {
            result.setData(null);
            result.setCode(ResultEnum.UNKNOW_ERROR.getCode());
            result.setMsg(ResultEnum.UNKNOW_ERROR.getMsg());
        }

        return result;
    }

    /**
     * 删除redis中的值
     * @param code
     * @return
     */
    @GetMapping(value = "/deleteRedisByCode")
    public Result deleteRedisByCode(@RequestParam(value = "code") String code) {

        Result result = new Result();

        if (stringRedisTemplate.hasKey(code)) {
            stringRedisTemplate.delete(code);
        }

        result.setData(null);
        if (!stringRedisTemplate.hasKey(code)) {
            result.setCode(ResultEnum.SUCCESS.getCode());
            result.setMsg(ResultEnum.SUCCESS.getMsg());
        } else {
            result.setCode(ResultEnum.UNKNOW_ERROR.getCode());
            result.setMsg(ResultEnum.UNKNOW_ERROR.getMsg());
        }

        return result;
    }

    /**
     * 判断是否存在
     * @param code
     * @return
     */
    @GetMapping(value = "/hasRedisCode")
    public Result hasRedisCode(@RequestParam(value = "code") String code) {

        Result result = new Result();

        if (stringRedisTemplate.hasKey(code)) {
            result.setData(true);
        } else {
            result.setData(false);
        }
        result.setCode(ResultEnum.SUCCESS.getCode());
        result.setMsg(ResultEnum.SUCCESS.getMsg());

        return result;
    }
}
