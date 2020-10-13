package com.togogo.service.impl;

import com.togogo.domain.Account;
import com.togogo.service.IAccountService;

import java.util.List;

/**
 * @description:
 * @author: Haodadeyu
 * @time: 2020/10/13 23:22
 */
public class AccountServiceImpl implements IAccountService {

    @Override
    public List<Account> findAllAccount() {
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
    public void transfer(String sourceName, String targetName, Float money) {

    }
}
