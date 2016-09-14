package JdbcOpert;
import java.io.InputStream;
import java.util.Properties;

public class RedProperties {
	private void Lode(){
		InputStream inputStream = this.getClass().getClassLoader().getResourceAsStream("log4j.properties");
		// TODO Auto-generated method stub
	     Properties p=new Properties();
	     try {
			p.load(inputStream);
	    	 System.out.println(p.getProperty("username"));
	    	 System.out.println(p.getProperty("pwd"));

	     } catch (Exception e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	     }
	}
	      
	public static void main(String[] args) {	
		RedProperties red=new RedProperties();
		red.Lode();
	}

}
