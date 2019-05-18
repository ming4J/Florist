package com.shellming.controller;


import com.alibaba.fastjson.JSONObject;
import com.shellming.dao.UsersDao;
import com.shellming.entity.Users;
import com.shellming.ulits.WeChatUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;


import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;


@RestController
public class loginController {

    @Autowired
    private UsersDao usersDao;

    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public@ResponseBody
    Map<String,Object> login(@RequestBody Users users){
        String appid="wx98bb9772fb3540c3";
        String secret="3990228d35b8769fbc41578020028616";
        String code=users.getCode();
        String url = "https://api.weixin.qq.com/sns/jscode2session?appid=" + appid + "&secret=" + secret + "&js_code=" + code + "&grant_type=authorization_code";
        String str=WeChatUtil.httpRequest(url, "GET", null);
        // 转成Json对象 获取openid
        JSONObject jsonObject = JSONObject.parseObject(str);
        String openid = jsonObject.get("openid").toString();
        users.setOpenId(openid);
        System.err.println(users);
        Map<String,Object> map=new HashMap<String, Object>();
        map.put("openid",openid);
        int flag=usersDao.checkUser(users);
        if(flag!=1){
            map.put("status","ERROR");
        }
        if(flag==1){
            usersDao.updateUser(users);
            map.put("status","OK");

        }else {
            usersDao.login(users);
            map.put("status","new");
        }

       return map;
    }

    @RequestMapping(value = "/login/start",method = RequestMethod.POST)
    public@ResponseBody
    JSONObject startlogin(@RequestBody Users users){

        String appid="wx98bb9772fb3540c3";
        String secret="3990228d35b8769fbc41578020028616";
        String code=users.getCode();
        String url = "https://api.weixin.qq.com/sns/jscode2session?appid=" + appid + "&secret=" + secret + "&js_code=" + code + "&grant_type=authorization_code";
        String str=WeChatUtil.httpRequest(url, "GET", null);
        // 转成Json对象 获取openid
        JSONObject jsonObject = JSONObject.parseObject(str);
        String openid = jsonObject.get("openid").toString();
        JSONObject userOpenId=new JSONObject();
        userOpenId.fluentPut("openid",openid);


        return userOpenId ;
    }

    @RequestMapping(value = "/out",method = RequestMethod.POST)
    public @ResponseBody Map<String,Object> out(@RequestBody Users users){
        Map<String,Object> map=new HashMap<String, Object>();
        usersDao.outUser(users);
        map.put("status","userout");
        return map;
    }
    @RequestMapping(value = "/check",method = RequestMethod.POST)
    public @ResponseBody Map<String,Object> checklog(@RequestBody Users users){
        Map<String,Object> map=new HashMap<String, Object>();
        int flag=usersDao.checkUserLog(users);
        map.put("status",flag);
        return map;
    }
}
