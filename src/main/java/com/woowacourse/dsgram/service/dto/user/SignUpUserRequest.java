package com.woowacourse.dsgram.service.dto.user;

import lombok.AccessLevel;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

@Getter
@NoArgsConstructor(access = AccessLevel.PRIVATE)
public class SignUpUserRequest {
    @Size(min = 2, max = 10, message = "닉네임은 2~10자")
    private String nickName;

    @Size(min = 2, max = 10, message = "이름은 2~10자")
    private String userName;

    @Size(min = 4, max = 16, message = "비밀번호는 4~16자")
    private String password;

    @Email(message = "이메일 양식")
    @NotBlank(message = "이메일은 필수입니다.")
    private String email;

    @Builder
    public SignUpUserRequest(String nickName, String userName, String password, String email) {
        this.nickName = nickName;
        this.userName = userName;
        this.password = password;
        this.email = email;
    }
}
