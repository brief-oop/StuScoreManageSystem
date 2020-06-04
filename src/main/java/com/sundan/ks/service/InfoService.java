package com.sundan.ks.service;

import com.sundan.ks.bean.Info;

import java.util.List;

public interface InfoService {
    Info getInfo(Integer id);
    int updateInfo(Info info);
    int manaInfo(Info info,Integer id_);
    List<Info> getListInfo(String s);
}
