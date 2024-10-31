package com.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.model.Collection;
import com.util.DBUtil;

public class CollectionDAO 
{
	private Connection connection;
	public CollectionDAO()
	{
		connection = DBUtil.getConnection();
	}
	
	public List<Collection> getAllCollections() 
	{
		 List<Collection> collections = new ArrayList<>();
		 try 
		 {
			 Statement stmt = connection.createStatement();
			 ResultSet rs = stmt.executeQuery("SELECT * FROM collection");
			 while (rs.next()) 
			 {
				 Collection collection = new Collection();
				 collection.setId(rs.getInt("id"));
				 collection.setName(rs.getString("name"));
				 collection.setTitle(rs.getString("title"));
				 collection.setDescription(rs.getString("description"));
				 collection.setImage(rs.getString("image"));
				 collections.add(collection);
			 }
		 } catch (SQLException e) 
		 {
			 e.printStackTrace();
		 }
		 return collections;
	}
}
