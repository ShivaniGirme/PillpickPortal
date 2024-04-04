package pillpeek_portal;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/homePage")
public class HomePageController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id=Integer.parseInt(req.getParameter("uid"));
		System.out.println(id);
		
		UserCRUD crud=new UserCRUD();
		ProductCRUD productCRUD=new ProductCRUD();
		try {
			User user= crud.getAllUserInfoById(id);
			
			System.out.println(user.getFirstName());
			if (user!=null) {
				
				if (user.getRole().equalsIgnoreCase("Buyer")) {
					req.setAttribute("tempUserInfo", user);
					List<Product>allProduct=productCRUD.getAllProduct();
					req.setAttribute("listOfAllProduct", allProduct);
				
					RequestDispatcher dispatcher = req.getRequestDispatcher("buyerHomePage.jsp");					
					dispatcher.forward(req, resp);
				}else if (user.getRole().equalsIgnoreCase("Owner")) {
					
//					req.setAttribute("tempUserInfo", user);
					RequestDispatcher dispatcher = req.getRequestDispatcher("ownerHomePage.jsp");
					dispatcher.forward(req, resp);
				}
				
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
}
