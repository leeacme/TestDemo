package Junit;

import static org.junit.Assert.*;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import Dao.UserOpDao;
import Entity.UserInfo;
import TestClass.DBtest;

public class DBtestTest {

	@Before
	public void setUp() throws Exception {
	}

	@After
	public void tearDown() throws Exception {
	}

	@Test
	public void testGetconn() {
		//fail("Not yet implemented");
		//DBtest bd=new DBtest();
		UserInfo user=new UserInfo();
		user.setLoginID("12");
		user.setName("12");
		user.setPwd("12");
		user.setRole(1);
		user.setDepict("12");
		UserOpDao dao=new UserOpDao();
		int i=dao.InsertData(user);
		//int i=bd.getconn();
	    assertEquals(1, i);	
	}

}
