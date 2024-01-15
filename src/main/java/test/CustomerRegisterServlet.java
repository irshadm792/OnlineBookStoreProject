package test;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
@SuppressWarnings("serial")
@WebServlet("/UserRegister")
public class CustomerRegisterServlet extends HttpServlet {
	protected void doPost(HttpServletRequest req, HttpServletResponse res)throws ServletException,IOException{
		CustomerBean cb = new CustomerBean();
		cb.setUname(req.getParameter("uname"));
		cb.setPword(req.getParameter("pword"));
		cb.setFname(req.getParameter("fname"));
		cb.setLname(req.getParameter("lname"));
		cb.setAddr(req.getParameter("addr"));
		cb.setMido(req.getParameter("mid"));
		cb.setPhno(Long.parseLong(req.getParameter("phno")));
		int k =new CustumerRegisterDAO().insert(cb);
		if(k>0) {
			req.setAttribute("msg", "Register Successefull");
			req.getRequestDispatcher("CustomerRegister.jsp").forward(req, res);
		}
	}

}
