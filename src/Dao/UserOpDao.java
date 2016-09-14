package Dao;
import javax.websocket.Extension.Parameter;

import Acme.DBHelper.SqlHelper;
import Entity.UserInfo;
public class UserOpDao {
	public UserOpDao(){}
	/**
	 * @author lee
	 *增加数据 
	 */
	public int InsertData(UserInfo user){
	
		String cmd="insert into T_UserInfo(LoginID,Name,Pwd,Role,Depict) values(?,?,?,?,?)";
		Object[] par=new Object[]{user.getLoginID(),user.getName(),user.getPwd(),user.getRole(),user.getDepict()};
		return SqlHelper.ExecSql(cmd, par);
	
	}
}

