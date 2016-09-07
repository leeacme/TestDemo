package JdbcOpert;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import org.apache.log4j.Logger;

public class SqlDB {
	protected static Logger logger = Logger.getLogger(SqlDB.class);
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		  //second
		logger.info("jsbc测试开始");
		   System.out.println("-------程序开始-------");
		   Connection ct = null;
		   Statement sm = null;
		   ResultSet rs = null;
		   try {
		    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		    ct = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;database=DBUsers;","j2ee","j2eepwd");
		    sm = ct.createStatement();
		    //加入一条数据
		    System.out.println("-------连接成功，加入一条数据-------");
		    int s= sm.executeUpdate("insert into T_UserInfo(LoginID,Name,Pwd,Role,Depict) values('admin','李可豪','pwd123','1','管理员')");	    	
		    System.out.println("受影响行数"+s);
		    
		    System.out.println("------查询数据-------");	    
		     rs = sm.executeQuery("select * from T_UserInfo");
		     while(rs.next()) {
		     System.out.println("员工编号:"+rs.getString("LoginID").toString()+"|"+"姓名:"+rs.getString("Name").toString()+"|"+"密码:"+rs.getString("Pwd").toString()+"|"+"角色:"+rs.getString("Role").toString()+"|"+"说明:"+rs.getString("Depict").toString() );		     
		    }
		         
		    System.out.println("------修改数据-------");
		    
		    int us= sm.executeUpdate("update T_UserInfo set Name='张三' where LoginID='admin'");	  	
		    System.out.println("受影响行数"+us);
		    
		    System.out.println("------修改后再次查询数据-------");	    
		     rs = sm.executeQuery("select * from T_UserInfo");
		     while(rs.next()) {
		     System.out.println("员工编号:"+rs.getString("LoginID").toString()+"|"+"姓名:"+rs.getString("Name").toString()+"|"+"密码:"+rs.getString("Pwd").toString()+"|"+"角色:"+rs.getString("Role").toString()+"|"+"说明:"+rs.getString("Depict").toString() );		     
		    }
		     
			 System.out.println("------删除该条数据-------");	    
			  int ds= sm.executeUpdate("delete from T_UserInfo where LoginID='admin'");	  	
			  System.out.println("受影响行数"+ds);
			  System.out.println("-------程序结束-------");
		   }catch (Exception e) {
		 System.out.println(e.toString());
		    e.printStackTrace();
		   }finally {
			 System.out.println("-------连接关闭-------");  
		    try {
		     if(rs != null) {
		      rs.close();
		      rs = null;
		     }
		     if(sm != null) {
		      sm.close();
		      sm = null;
		     }
		     if(ct != null) {
		      ct.close();
		      ct = null;
		     }
		    }catch (Exception e) {
		     e.printStackTrace();
		    }
		   }
	}

}
