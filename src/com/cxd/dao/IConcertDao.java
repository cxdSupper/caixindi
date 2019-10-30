package com.cxd.dao;

import java.util.List;

import com.cxd.bean.City;
import com.cxd.bean.Concert;

public interface IConcertDao {
	/**
	 * 按类别查询
	 */
	public List<Concert> findByTypes(String leixing);
	
	/**
	 * 按城市查询
	 */
	public List<Concert> findByCity(String chengshi);
	
	
}
