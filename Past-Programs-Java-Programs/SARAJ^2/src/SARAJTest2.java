import org.watij.webspec.dsl.*;


public class SARAJTest2 {
	public static void main(String[] args) { 
		  WebSpec spec = new WebSpec().ie();
		  spec.ie().open("http://localhost:8080/SARAJ2/login.html");
		    
		  spec.find.input().with.type("text").set("jfraiser");
		  spec.find.input().with.type("password").set("random");
		  
		  spec.pause(2000).find.input().with.type("submit").click();
		  
		  spec.pause(2000).find.input().with.name("createsite").click();
		  spec.pause(2000).find.input().with.type("text").set("PS4 vs Xbox 720");
		  spec.pause(2000).find.input().with.name("create1").click();
		  
		  spec.find.input().with.name("contin").click();
		  spec.find.input().with.name("np1").click();
		  			 
		  spec.pause(2000).find.input().with.type("text").set("Specs of PS4");
		  spec.pause(2000).find.input().with.name("next").click();
		  spec.pause(2000).find.input().with.name("continue").click();
		  
		  spec.pause(2000).find.input().with.name("add Text").click();
		  
		  spec.pause(2000).find.input().with.type("text").set("The PS4 has a dual core processor");
		  spec.pause(2000).find.input().with.name("doneadd").click();
		  spec.pause(2000).find.input().with.name("back2cont").click();

		  
		  spec.pause(2000).find.input().with.name("backhome").click();
		  spec.pause(2000).find.input().with.name("logout").click();
	  
	}

}
