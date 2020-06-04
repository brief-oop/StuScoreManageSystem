package com.sundan.ks.mapper;

import com.sundan.ks.bean.Info;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface InfoMapper {
    Info getInfo(Integer id);
    int updateInfo(Info info);
    int manaInfo(@Param("info") Info info, @Param("id_") Integer id_);
    List<Info> getListInfo(String s);
}
