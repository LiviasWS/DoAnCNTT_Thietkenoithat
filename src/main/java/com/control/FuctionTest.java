package com.control;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;

import com.dao.CollectionDAO;
import com.dao.ProductDAO;
import com.model.Collection;
import com.model.Product;

public class FuctionTest 
{
	
	public static void main(String[] args) 
	{
		// TODO Auto-generated method stub
		try {
			CollectionDAO collectionDAO= new CollectionDAO();
			Collection collection = collectionDAO.GetCollectionByID(1);
			{
				{
					System.out.println("ID: "+ collection.getId());
					System.out.println("Name: "+ collection.getName());
				}
			}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	private static Map<Collection, List<Product>> GetBestSellerByCollection() throws ServletException, IOException
	{
		CollectionDAO collectionDAO= new CollectionDAO();;
		ProductDAO productDAO= new ProductDAO();
		Map <Collection, List<Product>> collectionBestSellerMap= new HashMap<>();
		List<Collection> collections= collectionDAO.getAllCollections();
		for(Collection collection : collections)
		{
			List<Product> bestSellers = productDAO.GetTop4BestSeller(collection.getId());
			collectionBestSellerMap.put(collection, bestSellers);
		}
		return collectionBestSellerMap;
	}

}
