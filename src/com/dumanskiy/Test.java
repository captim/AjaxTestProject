package com.dumanskiy;

import com.dumanskiy.dao.DAOConnection;
import com.dumanskiy.dao.WebLogicDAOConnection;

public class Test {
    public static void main(String[] args) {
        DAOConnection daoConnection = WebLogicDAOConnection.getInstance();
        daoConnection.connect();
    }
}
