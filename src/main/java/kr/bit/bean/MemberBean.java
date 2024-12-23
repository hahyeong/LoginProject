package kr.bit.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MemberBean {
    private String id;
    private String pass;
    private String name;
    private String gender;
    private String email;
    private String birth;
    private String zipcode;
    private String address;
    private String hobby;
    private String job;
}

