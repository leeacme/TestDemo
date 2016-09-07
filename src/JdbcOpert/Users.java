package JdbcOpert;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.apache.log4j.Logger;
import com.ndktools.javamd5.*;
import com.sun.xml.internal.bind.v2.schemagen.xmlschema.List;

import Entity.UserInfo;

public class Users {
	public Users(){}
	//增加一个用户访问类 Users，在其中编写方法实现用户信息查询、增加、修
	//改密码的功能，涉及密码的处理需要调用外部 jar包实现加密处理 
	//已导入md5加密包
	//这里加入数据库帮助类已便于操作
	
	protected Logger logger = Logger.getLogger(getClass());
	//添加数据
	private int insert(String LoginID,String Name,String Pwd,String Role,String Depict){
		String cmdText="insert into T_UserInfo(LoginID,Name,Pwd,Role,Depict) values(?,?,?,?,?)";	
		Mademd5 mad=new Mademd5();
		String pd=mad.toMd5(Pwd);		
		Object[] par=new Object[]{LoginID,Name,pd,Role,Depict};
		logger.debug("添加数据");;
		return SQLHelper.ExecSql(cmdText,par);
		}
	    //查询数据
		private UserInfo SelectByName(String name) throws SQLException{		
			UserInfo user=new UserInfo();
			String cmdText="Select * from T_UserInfo where Name="+name;
		    ResultSet res= SQLHelper.getResultSet(cmdText);
		    while(res.next()) {
		     System.out.println("员工编号:"+res.getString("LoginID").toString()+"|"+"姓名:"+res.getString("Name").toString()+"|"+"密码:"+res.getString("Pwd").toString()+"|"+"角色:"+res.getString("Role").toString()+"|"+"说明:"+res.getString("Depict").toString() );		     
		     user.setLoginID(res.getString("LoginID").toString());
		     user.setName(res.getString("Name").toString());
		     user.setPwd(res.getString("Pwd").toString());
		     user.setDepict(res.getString("Depict").toString());
		     user.setRole(res.getInt("Role"));
		 }
		 logger.debug("查询数据");;
		 return user;//
		}
		//修改
		private int AlterPwd(String pwd,String Lodid){
			Mademd5 mad=new Mademd5();
			String pd=mad.toMd5(pwd);		
			String cmdText="update T_UserInfo set Pwd="+pd+" where LoginID="+Lodid;
			 logger.debug("修改数据");;
		    return SQLHelper.ExecSql(cmdText);//查询结果
		}
		
}
