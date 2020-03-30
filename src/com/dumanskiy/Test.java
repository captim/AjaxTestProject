package com.dumanskiy;

import com.dumanskiy.dao.OracleDAOConnection;

public class Test {
    public static void main(String[] args) {
        OracleDAOConnection.getInstance().deleteStudent(41);
        OracleDAOConnection.getInstance().deleteStudent(42);
    }
}
