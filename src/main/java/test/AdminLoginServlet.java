package test;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
@SuppressWarnings("serial")
@WebServlet("/Adminlogin")
public class AdminLoginServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res)throws ServletException,IOException{
		AdminBean ab =new AdminLoginDAO().login(req.getParameter("uid"),req.getParameter("pword"));
		System.out.println(ab);		
		if(ab==null) {
			req.setAttribute("msg", "Invalid UserName And Password");
			req.getRequestDispatcher("Home.jsp").forward(req, res);
		}else {
			HttpSession hs =req.getSession();
			hs.setAttribute("abean",ab );
			req.getRequestDispatcher("AdminLogin.jsp").forward(req, res);
			
			
		}
		
	}

}
