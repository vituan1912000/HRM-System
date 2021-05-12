package dao;

import java.util.List;

import entities.Message;

public interface MessageDao{
	public List<Message> loadMess();
}
