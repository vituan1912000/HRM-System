package dao;

import java.util.List;

import entities.Apply;


public interface ApplyDao {
 public List<Apply> displayRequest();
 public boolean addApply(Apply a);
}
