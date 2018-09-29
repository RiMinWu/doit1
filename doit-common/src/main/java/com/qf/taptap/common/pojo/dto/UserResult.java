package com.qf.taptap.common.pojo.dto;

import java.io.Serializable;
import java.util.List;

/**
 * Created by wurim on 2018/9/5.
 */
public class UserResult<T> implements Serializable{

    private int code;
    private String msg;
    private long count;
    private List<T> data;

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public long getCount() {
        return count;
    }

    public void setCount(long count) {
        this.count = count;
    }

    public List<T> getData() {
        return data;
    }

    public void setData(List<T> data) {
        this.data = data;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }
}
