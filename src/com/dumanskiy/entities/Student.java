package com.dumanskiy.entities;

public class Student {
    private int id;
    private String name;
    private float scholarship;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public float getScholarship() {
        return scholarship;
    }

    public void setScholarship(float scholarship) {
        this.scholarship = scholarship;
    }

    public Student(int id, String name, float scholarship) {
        this.id = id;
        this.name = name;
        this.scholarship = scholarship;
    }
}
