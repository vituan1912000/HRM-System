package dao;

import java.util.List;

import entities.Account;

public interface AccountDao {
public List<Account> getUser();
public boolean ifAdmin(String user_name, String pass,boolean status);
public boolean ifUser(String userName,String pass,boolean status); // cai controller dau
}
