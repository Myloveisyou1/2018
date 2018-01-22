package com.wx.farm.controller;

import com.wx.farm.domain.consume.Consume;
import com.wx.farm.domain.Result;
import com.wx.farm.service.ConsumeService;
import com.wx.farm.utils.ResultUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.text.ParseException;

/**
 * @Descript: 消费记录控制层
 * @Author: liuyingjie
 * @Date: create in 2018/1/8 0008 9:39
 */
@RestController
@RequestMapping(value = "/consume")
public class ConsumeController {

    @Autowired
    private ConsumeService service;

    /**
     * 获取上周的消费情况
     * @return
     */
    @RequestMapping(value = "/findConsumeMoneyOfLastWeek")
    public Result findConsumeMoneyOfLastWeek() throws ParseException {

        return ResultUtil.success(service.findConsumeMoneyOfLastWeek());

    }

    /**
     * 获取当天的消费情况
     * @return
     */
    @RequestMapping(value = "/findConsumeToday")
    public Result findConsumeToday() throws ParseException {

        return ResultUtil.success(service.findConsumeToday());

    }

    /**
     * 添加消费记录
     * @param consume
     * @return
     */
    @RequestMapping(value = "/addConsume")
    public Result addConsume(Consume consume, @RequestParam("name") String fName, @RequestParam("price")String fPrice) {

        return ResultUtil.success(service.addConsume(consume,fName,fPrice));
    }
}
