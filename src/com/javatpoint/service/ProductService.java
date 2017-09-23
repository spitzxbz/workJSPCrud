package com.javatpoint.service;

import java.sql.SQLException;
import java.util.List;

import com.javatpoint.dao.ProductDao;
import com.javatpoint.bean.PageBean;
import com.javatpoint.bean.Product;

public class ProductService {
	//�Ыؤ@��Dao��H
	ProductDao productDao = new ProductDao();
	
	public List<Product> findAllBooks(){
		try {
			return productDao.findAllBooks();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	//�K�[�Ϯ�
	public void addBook(Product product){
		try {
			productDao.addBook(product);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public Product findBookById(String id) {
		try {
			return productDao.findBookById(id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	public void updateBook(Product product) {
		try {
			productDao.updateBook(product);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void deleteBook(String id) {
		try {
			productDao.delBook(id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void deleAllBooks(String[] ids) {
		try {
			productDao.deleAllBooks(ids);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public List<Product> searchBooks(String id, String category, String name,
			String minprice, String maxprice) {
		try {
			return productDao.searchBooks(id,category,name,minprice,maxprice);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	//�����d��
	public PageBean findBooksPage(int currentPage, int pageSize,String category) {
		
		try {
			int count  = productDao.count(category);//�o���`�O����
			int totalPage = (int)Math.ceil(count*1.0/pageSize); //�D�X�`����
			List<Product> products= productDao.findBooks(currentPage,pageSize,category);
			
			//��5���ܶq�ʸ˨�PageBean���A������^��
			PageBean pb = new PageBean();
			pb.setProducts(products);
			pb.setCount(count);
			pb.setCurrentPage(currentPage);
			pb.setPageSize(pageSize);
			pb.setTotalPage(totalPage);
			//�bpageBean���K�[�ݩʡA�Ω��I���W�@���ΤU�@���ɨϥ�
			pb.setCategory(category);
			
			return pb;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return null;
	}

	public List<Object> searchBookByName(String name) {
		try {
			return productDao.searchBookByName(name);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	

	
	
	
}