package TestClass;

import Acme.DBHelper.SqlHelper;
public class DBtest {
	public int getconn(){		
	   return SqlHelper.ExecSql("Select count(*) from T_UserInfo");	   
	}
}
