package omni.RSS;

import android.app.Activity;
import android.os.Bundle;
import android.widget.Toast;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;


public class OmniRSSNewsActivity extends Activity {
    /** Called when the activity is first created. */
    
	private InputStream OpenHttpConnection(String urlString)
	throws IOException
	{
		InputStream in = null;
		int response = -1;
		
		URL url = new URL(urlString);
		URLConnection conn = url.openConnection();
		
		if(!(conn instanceof HttpURLConnection))
			throw new IOException("Not an HTTP connection");
		try {
			HttpURLConnection httpConn = (HttpURLConnection) conn;
			httpConn.setAllowUserInteraction(false);
			httpConn.setInstanceFollowRedirects(true);
			httpConn.setRequestMethod("GET");
			httpConn.connect();
			response = httpConn.getResponseCode();
			if(response == HttpURLConnection.HTTP_OK){
				in = httpConn.getInputStream();
			}
		}
		catch(Exception ex)
		{
			throw new IOException("Error connecting");
		}
		return in;
	}
	private String DownloadText(String URL){
		int BUFFER_SIZE = 2000;
		InputStream in = null;
		try {
			in = OpenHttpConnection(URL);
		} catch (IOException el) {
			Toast.makeText(this, el.getLocalizedMessage(),Toast.LENGTH_LONG).show();
			
			el.printStackTrace();
			return "";
		}
		
		InputStreamReader isr = new InputStreamReader(in);
		int charRead; 
		String str = "";
		char[] inputBuffer = new char[BUFFER_SIZE];
		try{
			while ((charRead = isr.read(inputBuffer))>0)
			{
				//convert the chars to Strings
				String readString = 
						String.copyValueOf(inputBuffer, 0, charRead);
				str += readString;
				inputBuffer = new char[BUFFER_SIZE];
			}
			in.close();
		} catch(IOException e){
			Toast.makeText(this, e.getLocalizedMessage(), Toast.LENGTH_LONG).show();
			
			e.printStackTrace();
			return "";
		}
		return str;
	}
	
	@Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);
        
        String str = DownloadText("http://feeds.g4tv.com/g4tv/thefeed?format=xml");
        Toast.makeText(getBaseContext(), str, Toast.LENGTH_LONG).show();
    }
}