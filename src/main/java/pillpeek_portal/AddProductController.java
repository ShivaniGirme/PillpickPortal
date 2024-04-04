package pillpeek_portal;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/addProduct")

public class AddProductController extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String name = req.getParameter("name");
		double price = Double.parseDouble(req.getParameter("price"));
		String expDate = req.getParameter("expDate");
		String mgfDate = req.getParameter("mgfDate");
		String category = req.getParameter("productType");
		String discription = req.getParameter("discription");
		int quantity = Integer.parseInt(req.getParameter("quantity"));
		int userId = Integer.parseInt(req.getParameter("userId"));

		Product product = new Product();

		product.setUserId(userId);
		product.setName(name);
		product.setPrice(price);
		product.setExpDate(expDate);
		product.setMgfDate(mgfDate);
		product.setCategory(category);
		product.setDiscription(discription);

//		System.out.println(userId);

		ProductCRUD crud = new ProductCRUD();
//		UserCRUD userCRUD = new UserCRUD();

		try {
			Product dbProduct = crud.getProductByName(name);
			RequestDispatcher dispatcher = null;

			System.out.println(dbProduct.getName());

			if (name.equals(dbProduct.getName())) {

				dbProduct.setQuantity(quantity + dbProduct.getQuantity());
				int result = crud.UpdateAddedProduct(dbProduct);
				if (result != 0) {

					dispatcher = req.getRequestDispatcher("ownerHomePage.jsp");
					dispatcher.forward(req, resp);
				}
			} else {
				product.setQuantity(quantity);
				int result = crud.createProduct(product);
				if (result != 0) {
					dispatcher = req.getRequestDispatcher("ownerHomePage.jsp");
					dispatcher.forward(req, resp);
				}
			}

		} catch (Exception e) {
			// TODO: handle e.xception
			e.printStackTrace();
		}

	}

}
