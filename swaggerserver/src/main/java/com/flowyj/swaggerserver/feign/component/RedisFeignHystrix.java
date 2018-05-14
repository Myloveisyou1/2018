package com.flowyj.swaggerserver.feign.component;

import com.flowyj.swaggerserver.feign.RedisFeignService;
import org.springframework.stereotype.Component;

/**
 * @Descript: 断路器hystrix
 * @Author: liuyingjie
 * @Date: create in 2018/5/7 0007 14:45
 */
@Component
public class RedisFeignHystrix implements RedisFeignService{
    @Override
    public String getRedisByCode(String code) {

        return "服务暂不可用,请稍后再试!";
    }
}
