package com.codegym;

public class Customer {
    private String name;
    private String birthday;
    private String address;
    private String image_src;

    public Customer() {
    }

    public Customer(String name, String birthday, String address, String image_src) {
        this.name = name;
        this.birthday = birthday;
        this.address = address;
        this.image_src = image_src;
    }

    public String getName() {
        return name;
    }

    public String getBirthday() {
        return birthday;
    }

    public String getAddress() {
        return address;
    }

    public String getImage_src() {
        return image_src;
    }
}
