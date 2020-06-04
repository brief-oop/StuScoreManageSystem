package com.sundan.ks.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Info {
    private Integer id;
    private Integer age;
    private String sex;
    private String nation;
    private String phone;
}
