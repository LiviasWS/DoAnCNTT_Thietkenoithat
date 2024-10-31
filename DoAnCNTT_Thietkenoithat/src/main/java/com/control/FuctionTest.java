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
			Map<Collection, List<Product>> map = GetBestSellerByCollection();
			for(Collection collection : map.keySet())
			{
				System.out.println("Collection: "+ collection.getName());
				for(Product bestSeller : map.get(collection))
				{
					System.out.println("Best Seller: "+ bestSeller.getName());
				}
			}
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
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
