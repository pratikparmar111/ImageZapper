import javax.servlet.*;
import java.io.*;

public class abc extends GenericServlet
{
	public void service(ServletRequest req, ServletResponse res) throws IOException, ServletException
	{
		res.setContentType("text/html");
		PrintWriter x=res.getWriter();
		x.println("<b> Hello </b>");
	}
}	