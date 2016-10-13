
import org.watij.webspec.dsl.*;

public class SARAJTest {

	  public static void main(String[] args) { 
		  WebSpec spec = new WebSpec().ie();
		  spec.ie().open("http://localhost:8080/SARAJ2/login.html");
		  
		  spec.pause(2000).find.input().with.type("text").set("jksmith");
		  spec.pause(2000).find.input().with.type("password").set("beast");
		  
		  spec.pause(2000).find.input().with.type("submit").click();
		  
		  spec.pause(2000).find.input().with.name("add1").click();
		  
		  spec.pause(2000).find.input().with.name("acct").set("Developer");
		  spec.pause(2000).find.input().with.name("fname").set("Clement");
		  spec.pause(2000).find.input().with.name("lname").set("Allen");
		  spec.pause(2000).find.input().with.name("usname").set("c.allen");
		  spec.pause(2000).find.input().with.name("passw").set("pizza");
		  spec.pause(2000).find.input().with.name("email").set("clement.allen@gmail.com");
		  
		  spec.pause(2000).find.input().with.name("S1").click();
		  
		  spec.pause(2000).find.input().with.name("back4").click();
		  spec.pause(2000).find.input().with.name("logout").click();
		  
	
		  
		  
	  }
}
