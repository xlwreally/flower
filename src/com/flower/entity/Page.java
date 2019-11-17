package com.flower.entity;

/**
 * @author 熊立伟
 * @version 1.0
 * @date 2019/11/17 10:11
 */
public class Page  {
    private Integer totalpage;
    private Integer currentpage;
    private Integer page=10;

    public Integer getTotalpage() {
        return totalpage;
    }

    public void setTotalpage(Integer totalpage) {
        this.totalpage = totalpage;
    }

    public Integer getCurrentpage() {
        return currentpage;
    }

    public void setCurrentpage(Integer currentpage) {
        this.currentpage = currentpage;
    }

    public Integer getPage() {
        return page;
    }

    public void setPage(Integer page) {
        this.page = page;
    }
}
