package com.dh.proyectointegrador.DigitalBooking.model;

public class AuthenticationResponse {

    private final String jwt;
    private final long userId;
    private final String name;
    private final String rolName;


    public AuthenticationResponse(String jwt, long userId, String name, String rolName) {
        this.jwt = jwt;
        this.userId =  userId;
        this.name = name;
        this.rolName = rolName;
    }

    public String getJwt() {
        return jwt;
    }
    public long getUserId() {
        return userId;
    }
    public String getName() {
        return name;
    }
    public String getRolName() {
        return rolName;
    }
}
