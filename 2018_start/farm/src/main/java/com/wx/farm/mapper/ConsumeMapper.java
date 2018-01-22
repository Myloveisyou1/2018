package com.wx.farm.mapper;

import com.wx.farm.domain.consume.Consume;
import com.wx.farm.domain.consume.ConsumeDetail;
import com.wx.farm.utils.SimpleInsertLangDriver;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;

/**
 * @Descript:
 * @Author: liuyingjie
 * @Date: create in 2018/1/8 0008 10:21
 */
@Mapper
@Component
public interface ConsumeMapper {

    @Select("select * from f_consume where f_consume_time >= #{lastMonday} and f_consume_time <= #{lastSunday}")
    List<Consume> findConsumeListOfLastWeek(String lastMonday, String lastSunday);

    @Select("select a.fid,a.f_name,a.f_des,b.f_consume_money,b.f_consume_time from f_sys_type a left join f_consume b on a.fid=b.f_consume_type and b.f_consume_time >= #{0}" +
            "AND b.f_consume_time <= #{1}")
    List<Map<String,Object>> findConsumeByDate(String lastMonday, String lastSunday);

    /**
     * 保存消费记录主表
     * @param consume
     * @return
     */
    @Insert("insert into f_consume (#{consume})")
    @Lang(SimpleInsertLangDriver.class)
    @Options(useGeneratedKeys=true, keyProperty="fid", keyColumn="fid")
    int addConsume(Consume consume);

    /**
     * 保存消费从表
     * @param consumeDetail
     * @return
     */
    @Insert("insert into f_consume_detail (#{consumeDetail})")
    @Lang(SimpleInsertLangDriver.class)
    int addConsumeDetail( ConsumeDetail consumeDetail);
}
