package dao;

import java.util.List;

import entities.Job;

public interface JobDao {
public List<Job> getAllJob();
public boolean addJob(Job j);
public boolean updateJob(Job j);
public Job getDecribetion(String id);
}
