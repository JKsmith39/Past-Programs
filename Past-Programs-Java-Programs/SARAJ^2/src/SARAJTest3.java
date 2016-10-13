import org.watij.webspec.dsl.Tag;
import org.watij.webspec.dsl.WebSpec;


public class SARAJTest3 {
	public static void main(String[] args) { 
		  WebSpec spec = new WebSpec().ie();
		  spec.ie().open("http://localhost:8080/SARAJ2/login.html");
		    
		  spec.find.input().with.type("text").set("jfraiser");
		  spec.find.input().with.type("password").set("random");
		  
		  spec.pause(2000).find.input().with.type("submit").click();
		  
		  spec.pause(2000).find.input().with.name("edit").click();
		  spec.find("option").with("90s shows").set("selected='true'");
		  spec.find("option").with("Nickelodeon").set("selected='true'");
		  
		  spec.find.input().with.id("site").set("90s shows");
		  spec.find.input().with.id("page").set("Nickelodeon");
		  spec.pause(2000).find.input().with.name("edit1").click();
		  
		  spec.pause(2000).find.input().with.name("genpg").click();
		  spec.pause(2000).find.input().with.name("back").click();
		  spec.pause(2000).find.input().with.name("backhome").click();
		  spec.pause(2000).find.input().with.name("logout").click();
		  
	}
}
