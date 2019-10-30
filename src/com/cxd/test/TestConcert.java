package com.cxd.test;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;

import com.cxd.bean.Concert;
import com.cxd.dao.IConcertDao;

public class TestConcert {
	/*
	 * private InputStream in; private SqlSession sqlSession; private IConcertDao
	 * concertDao;
	 * 
	 * // @Before//用于在测试方法执行之前执行 public void init()throws Exception{
	 * //1.读取配置文件，生成字节输入流 in = Resources.getResourceAsStream("SqlMapConfig.xml");
	 * //2.获取SqlSessionFactory SqlSessionFactory factory = new
	 * SqlSessionFactoryBuilder().build(in); //3.获取SqlSession对象 sqlSession =
	 * factory.openSession(true); //4.获取dao的代理对象 concertDao =
	 * sqlSession.getMapper(IConcertDao.class); }
	 * 
	 * // @After//用于在测试方法执行之后执行 public void destroy()throws Exception{ //提交事务 //
	 * sqlSession.commit(); //6.释放资源 sqlSession.close(); in.close(); }
	 */

    /**
     * 测试查询所有
     * @throws IOException 
     */
    
    @Test
    public void testFind() throws IOException{
    	
    	InputStream in = Resources.getResourceAsStream("SqlMapConfig.xml");
    	SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(in);
    	SqlSession session = factory.openSession(true);
    	IConcertDao concertDao2 = session.getMapper(IConcertDao.class);
    	
		
//		  List<Concert> list = concertDao2.findByTypes("演唱会"); 
		  List<Concert> list = concertDao2.findByCity("长沙"); 
		 
    	 
		  for (Concert concert : list) {
			 System.out.println(concert);
		  }
		 
        
        session.close();
        in.close();
    }

}
