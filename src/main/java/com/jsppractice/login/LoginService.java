package com.jsppractice.login;

public class LoginService {

    public boolean isUserValid(String user, String password) {
        if (user.equals("vdran") && password.equals("123"))
            return true;

        return false;
    }

}
