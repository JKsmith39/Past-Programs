
import org.watij.webspec.dsl.*;

public class Test6 {

	  public static void main(String[] args) { 
		  WebSpec spec = new WebSpec().ie();
		  spec.ie().open("http://localhost:8080/SARAJ2/login.html");
		  
		  spec.pause(2000).find.input().with.type("text").set("jksmith");
		  spec.pause(2000).find.input().with.type("password").set("beast");
		  
		  spec.pause(2000).find.input().with.type("submit").click();
		  
		  spec.pause(2000).find.input().with.name("search2").click();
		  
		  spec.pause(2000).find.input().with.type("text").set("PS3");
		  spec.pause(2000).find.input().with.name("search3").click();
		  
		  spec.pause(2000).find.input().with.name("back4").click();
		  spec.pause(2000).find.input().with.name("logout").click();
		  
	
		  
		  
	  }
}
