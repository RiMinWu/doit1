package com.qf.taptap.common.pojo.dto;

import java.io.Serializable;

/**
 * 封装前台传来的分页参数
 * Created by wurim on 2018/8/29.
 */
public class PageInfom implements Serializable{

    private int page;
    private int limit;

    public int getOffset() {
        return (page-1)*limit;
    }

    public int getLimit() {
        return limit;
    }

    public void setLimit(int limit) {
        this.limit = limit;
    }

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }
}
