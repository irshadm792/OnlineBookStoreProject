package test;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.util.*;
@SuppressWarnings("serial")
@WebServlet("/ViewBookDetails")
public class ViewBookDetailsServlet extends HttpServlet {
	protected void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException{
		HttpSession hs =req.getSession(false);
		if(hs==null) {
			req.setAttribute("msg", "Session Expired");
			req.getRequestDispatcher("Home.jsp").forward(req, res);
		}else {
			ArrayList<BookBean> al =new ViewBookDetailsDAO().retrive();
			hs.setAttribute("alist", al);
			req.getRequestDispatcher("AdminViewBookDetails.jsp").forward(req, res);		
		}
	}

}
