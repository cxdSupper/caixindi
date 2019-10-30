package com.cxd.service;

import java.io.IOException;
import java.util.List;

import com.cxd.bean.Concert;

public interface IConcertService {

	/**
	 * 按类别查询
	 * @throws IOException 
	 */
	public List<Concert> findByTypes(String leixing) throws IOException;
	
	/**
	 * 按城市查询
	 */
	public List<Concert> findByCity(String chengshi) throws IOException;
}
