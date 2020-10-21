package com.togogo.dao.impl;

import com.togogo.dao.IAccountDao;
import com.togogo.domain.Account;
import com.togogo.util.DbconUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class AccountDaoImpl implements IAccountDao {

    @Override
    public List<Account> findAllAccount() {
        try(Connection con=DbconUtil.getConnection();)
        {
            PreparedStatement p=con.prepareStatement("select money from account where name = ?");
            p.setObject(1,"aaa");
            ResultSet rs= p.executeQuery();
            while(rs.next())
            {
                Float money=rs.getFloat("money");
                System.out.println(money);
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }

        return null;
    }

    @Override
    public Account findAccountById(Integer accountId) {
        return null;
    }

    @Override
    public void saveAccount(Account account) {

    }

    @Override
    public void updateAccount(Account account) {

    }

    @Override
    public void deleteAccount(Integer acccountId) {

    }

    @Override
    public Account findAccountByName(String accountName) {
        return null;
    }
}
