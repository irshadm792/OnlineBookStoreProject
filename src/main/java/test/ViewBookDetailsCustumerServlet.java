package test;
import java.io.*;
import java.util.*;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
@SuppressWarnings("serial")
@WebServlet("/CViewBookDetails")
public class ViewBookDetailsCustumerServlet extends HttpServlet {
	protected void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException{
		HttpSession hs =req.getSession(false);
		if(hs==null) {
			req.setAttribute("msg", "Session Expired");
			req.getRequestDispatcher("Home.jsp").forward(req, res);
		}else {
			ArrayList<BookBean> al =new ViewBookDetailsDAO().retrive();
			hs.setAttribute("alist", al);
			req.getRequestDispatcher("CustomerViewBookDetails.jsp").forward(req, res);
			
		}
	}

}
