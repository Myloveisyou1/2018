package com.flowyj.swaggerserver.feign;

import com.flowyj.swaggerserver.feign.component.RedisFeignHystrix;
import org.springframework.cloud.netflix.feign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * @Descript:
 * @Author: liuyingjie
 * @Date: create in 2018/5/7 0007 14:43
 */
@FeignClient(value = "redis-server",fallback = RedisFeignHystrix.class)
public interface RedisFeignService {

    @GetMapping(value = "/getRedisByCode")
    String getRedisByCode(@RequestParam(value = "code") String code);
}
