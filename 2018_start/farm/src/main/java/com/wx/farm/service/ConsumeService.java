package com.wx.farm.service;

import com.wx.farm.domain.consume.Consume;
import com.wx.farm.domain.consume.ConsumeDetail;
import com.wx.farm.enums.ResultEnum;
import com.wx.farm.mapper.ConsumeMapper;
import com.wx.farm.utils.CommonUtil;
import com.wx.farm.utils.DatesUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;

/**
 * @Descript:
 * @Author: liuyingjie
 * @Date: create in 2018/1/8 0008 10:25
 */
@Service
public class ConsumeService {

    @Autowired
    private ConsumeMapper mapper;

    /**
     * 上一周的消费情况
     * @return
     * @throws ParseException
     */
    public List<Map<String,Object>> findConsumeMoneyOfLastWeek() throws ParseException {

        String lastMonday = DatesUtils.getMondayOfLastWeek()+" 00:00:00";
        String lastSunday = DatesUtils.getSundayOfLastWeek()+" 23:59:59";
        List<Map<String,Object>> list = mapper.findConsumeByDate(lastMonday,lastSunday);
        if(CommonUtil.isNotEmpty(list)){
            for(int i=0;i<list.size();i++){
                Map<String,Object> map = list.get(i);
                mapUtil(map);
            }
        }
        return list;
    }

    /**
     * 当天的消费情况
     * @return
     * @throws ParseException
     */
    public List<Map<String,Object>> findConsumeToday() throws ParseException {

        String lastMonday = DatesUtils.getToday()+" 00:00:00";
        String lastSunday = DatesUtils.getToday()+" 23:59:59";
        List<Map<String,Object>> list = mapper.findConsumeByDate(lastMonday,lastSunday);
        if(CommonUtil.isNotEmpty(list)){
            for(int i=0;i<list.size();i++){
                Map<String,Object> map = list.get(i);
                if(CommonUtil.isEmpty(map.get("f_consume_money"))){
                    map.put("f_consume_money",0);
                    map.put("f_consume_time",lastSunday);
                }else{
                    //System.out.println(map.get("f_consume_time").toString());
                    map.put("f_consume_time",DatesUtils.getDateByTime(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(map.get("f_consume_time").toString().substring(0,map.get("f_consume_time").toString().lastIndexOf("."))).getTime()));
                }
            }
        }
        return list;
    }


    public Map<String,Object> mapUtil(Map<String,Object> map){

        if(CommonUtil.isNotEmpty(map)){
            if(map.get("f_consume_type").toString().equals(ResultEnum.BREAKFIRST.getCode().toString())){
                map.put("f_consume_name", ResultEnum.BREAKFIRST.getMsg());
            }else if(map.get("f_consume_type").toString().equals(ResultEnum.LUNCH.getCode().toString())){
                map.put("f_consume_name", ResultEnum.LUNCH.getMsg());
            }else if(map.get("f_consume_type").toString().equals(ResultEnum.DINNER.getCode().toString())){
                map.put("f_consume_name", ResultEnum.DINNER.getMsg());
            }else if(map.get("f_consume_type").toString().equals(ResultEnum.SNACK.getCode().toString())){
                map.put("f_consume_name", ResultEnum.SNACK.getMsg());
            }else if(map.get("f_consume_type").toString().equals(ResultEnum.LIFE.getCode().toString())){
                map.put("f_consume_name", ResultEnum.LIFE.getMsg());
            }else if(map.get("f_consume_type").toString().equals(ResultEnum.COMMUNICATION.getCode().toString())){
                map.put("f_consume_name", ResultEnum.COMMUNICATION.getMsg());
            }else if(map.get("f_consume_type").toString().equals(ResultEnum.TRAFFIC.getCode().toString())){
                map.put("f_consume_name", ResultEnum.TRAFFIC.getMsg());
            }else if(map.get("f_consume_type").toString().equals(ResultEnum.ENTERTAINMENT.getCode().toString())){
                map.put("f_consume_name", ResultEnum.ENTERTAINMENT.getMsg());
            }
        }

        return map;
    }

    @Transactional
    public int addConsume(Consume consume,String fName,String fPrice) {

        ConsumeDetail consumeDetail = new ConsumeDetail();
        String ctime = DatesUtils.time();
        int a = mapper.addConsume(consume);
        consumeDetail.setF_consume_id(consume.getFid());
        String[] fname = fName.split(",");
        String[] fprice = fPrice.split(",");
        for (int i=0 ;i <fname.length ; i++) {
            consumeDetail.setF_name(fname[i]);
            consumeDetail.setF_price(Double.parseDouble(fprice[i]));
            consumeDetail.setF_ctime(ctime);
            mapper.addConsumeDetail(consumeDetail);
        }
        return a;
    }
}
