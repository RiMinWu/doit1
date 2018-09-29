package com.qf.taptap.user.web;

import com.qf.taptap.common.core.JsonUtils;
import com.qf.taptap.common.core.PropKit;
import com.qf.taptap.common.core.StrKit;
import com.qf.taptap.common.fdfs.FastDFSFile;
import com.qf.taptap.common.fdfs.FastDFSUtils;
import com.qf.taptap.common.pojo.dto.PageInfom;
import com.qf.taptap.common.pojo.dto.UserResult;
import com.qf.taptap.user.pojo.po.User;
import com.qf.taptap.user.pojo.vo.UserQuery;
import com.qf.taptap.user.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.util.*;

/**
 * Created by wurim on 2018/9/5.
 */
@Controller
public class UserManageAction {

   private Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private UserService ser;

    @ResponseBody
    @RequestMapping(value = "/users",method = RequestMethod.GET)
    public UserResult<User> listUsersByPage(PageInfom page,UserQuery query){
        UserResult<User> result = null;
        try {
            result = ser.listUsersByPage(page,query);
            List<User> data = result.getData();
            for (User user:data){
                System.out.println(user.getBirthday());
            }
        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return result;
    }

    @ResponseBody
    @RequestMapping(value = "/item/batch",method = RequestMethod.POST)
    public int modifyUsersByPage(@RequestParam("ids[]")List<Integer> ids){
        int i = 0;
        try {
            i = ser.modifyUsersByPage(ids);
        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return i;
    }

    @ResponseBody
    @RequestMapping(value = "/del",method = RequestMethod.POST)
    public int del(User user){
       user=ser.findById(user);
        int i = 0;
        try {
            i = ser.modifyUserById(user);
        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return i;
    }

    @ResponseBody
    @RequestMapping(value = "/item/add",method = RequestMethod.POST)
    public Object addUser(@RequestBody String dd){
        User user = JsonUtils.jsonToPojo(dd, User.class);
        ser.save(user);
        return 0;
    }


    @RequestMapping(value = "/search")
    public String search(User user,Model model){
        user=ser.findById(user);
        model.addAttribute("user",user);
        return "/pages/admin/edit";
    }

    @RequestMapping(value = "/edit/modify",method = RequestMethod.POST)
    public String doModify(@RequestBody String dd){
        User user = JsonUtils.jsonToPojo(dd, User.class);
        ser.modifyUser(user);
        return "redirect:/users";
    }

    @ResponseBody
    @RequestMapping(value = "/uploadImage")
    public String uploadImage(@RequestParam MultipartFile file,HttpSession session){
        //入参的变量名称一定要跟前台页面的控件名name一致
        Map<String, Object> map = new HashMap<>();
//        ser.getJsonString();
        String jsonString =null;
        try {
           //1。获取fastdfsfile
            FastDFSFile fastDFSFile = new FastDFSFile(file.getBytes(), file.getOriginalFilename(), file.getSize());
            //2.调用fastdfsutils.upload
            //如果调用uploadFile成功，返回的字符串就是如下格式：group1/M00/00/00/xxxxx.jpg
            String filepath = FastDFSUtils.uploadFile(fastDFSFile);
            String basePath = PropKit.use("fdfs_client.conf").get("fdfs_server");
            session.setAttribute("src", basePath + "/" + filepath);
            if(StrKit.notBlank(filepath)){
               //上传成功
                map.put("code",0);
                map.put("msg","success");
                Map<String, Object> dataMap = new HashMap<String, Object>();
                dataMap.put("src",basePath+"/"+filepath);
                map.put("data",dataMap);
            }else{
                //上传失败
                map.put("code",1);
                map.put("msg","failed");
                Map<String, Object> dataMap = new HashMap<String, Object>();
                dataMap.put("src","");
                map.put("data",dataMap);
            }
            //3.调用Json
            jsonString = JsonUtils.objectToJson(map);
        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return jsonString;
    }

}
