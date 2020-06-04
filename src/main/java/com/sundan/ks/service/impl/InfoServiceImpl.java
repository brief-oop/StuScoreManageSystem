package com.sundan.ks.service.impl;

import com.sundan.ks.bean.Info;
import com.sundan.ks.mapper.InfoMapper;
import com.sundan.ks.service.InfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class InfoServiceImpl implements InfoService {

    @Autowired
    private InfoMapper mapper;

    public Info getInfo(Integer id) {
        return mapper.getInfo(id);
    }

    public int updateInfo(Info info) {
        return mapper.updateInfo(info);
    }

    public int manaInfo(Info info, Integer id_) {
        return mapper.manaInfo(info,id_);
    }

    public List<Info> getListInfo(String s) {
        return mapper.getListInfo(s);
    }
}
