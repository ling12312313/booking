package com.common.utils;

import java.util.List;
//Page 是用于存储分页信息的自定义类，泛型为 flight（假设这是一个航班实体类）。
public class Page<T> {

    private int total;
    private int page;
    private int size;
    private List<T> rows;

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }

    public List<T> getRows() {
        return rows;
    }

    public void setRows(List<T> rows) {
        this.rows = rows;
    }


}
