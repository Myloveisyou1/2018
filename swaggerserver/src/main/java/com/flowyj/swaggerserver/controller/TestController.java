package com.flowyj.swaggerserver.controller;

import com.flowyj.swaggerserver.feign.RedisFeignService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

/**
 * @Descript:
 * @Author: liuyingjie
 * @Date: create in 2018/5/4 0004 15:02
 */
@RestController
@Api(value = "TestController 相关接口")
public class TestController {


    @Autowired
    private RedisFeignService redisFeignService;


    @ApiOperation(value = "测试接口",notes = "测试使用swagger的功能")
    @ApiImplicitParam(name = "name",value = "name",required = true,dataType = "String",paramType = "query")
    @RequestMapping(value = "/test",method = RequestMethod.GET)
    public List<User> test(@RequestParam(value = "name") String name) {

        List<User> u = new ArrayList<>();
        for(int i=0;i<3;i++) {
            User user = new User();
            user.setName(name);
            u.add(user);
        }

        return u;
    }

    @ApiOperation(value = "获取redis的值")
    @ApiImplicitParam(name = "code",value = "code",required = true,dataType = "String",paramType = "query")
    @GetMapping(value = "/getRedisByCode")
    public String getRedisByCode(@RequestParam(value = "code") String code) {

        return redisFeignService.getRedisByCode(code);
    }

}
