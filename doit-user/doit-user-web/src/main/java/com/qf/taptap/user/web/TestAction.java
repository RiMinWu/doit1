package com.qf.taptap.user.web;

import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by wurim on 2018/9/13.
 */
@RequestMapping
public class TestAction {

    @RequestMapping("/dotest.do")
    public String doTest(){
        return "test9";
    }
}
