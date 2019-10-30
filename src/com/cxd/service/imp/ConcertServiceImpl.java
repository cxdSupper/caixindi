package com.cxd.service.imp;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import javax.websocket.Session;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.cxd.bean.Concert;
import com.cxd.dao.IConcertDao;
import com.cxd.service.IConcertService;

public class ConcertServiceImpl implements IConcertService{
	private InputStream in;
	private SqlSessionFactory factory;
	private SqlSession session;
	
	@Override
	public List<Concert> findByTypes(String leixing) throws IOException {
		 in = Resources.getResourceAsStream("SqlMapConfig.xml");
    	 factory = new SqlSessionFactoryBuilder().build(in);
    	 session = factory.openSession(true);
    	IConcertDao concertDao = session.getMapper(IConcertDao.class);
    	List<Concert> list = concertDao.findByTypes(leixing);
    	in.close();
    	session.close();
		return  list;
	}

	@Override
	public List<Concert> findByCity(String chengshi) throws IOException {
		in = Resources.getResourceAsStream("SqlMapConfig.xml");
   	 	factory = new SqlSessionFactoryBuilder().build(in);
   	 	session = factory.openSession(true);
   	 	IConcertDao concertDao = session.getMapper(IConcertDao.class);
   	 	List<Concert> list = concertDao.findByCity(chengshi);
	   	in.close();
	 	session.close();
		return list;
		
	}

}
