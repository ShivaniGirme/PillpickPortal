package pillpeek_portal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProductCRUD {
	public Connection getConnection() throws Exception {
		// 1.Load Driver
		Class.forName("com.mysql.cj.jdbc.Driver");

		// 2.Establish Connection
		Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/pillpeek_portal", "root",
				"root");
		return connection;
	}

	public int createProduct(Product product) throws Exception {
		Connection connection = getConnection();

		// 3.Create Statements
		PreparedStatement preparedStatement = connection.prepareStatement(
				"INSERT INTO product(name, price, quantity, expDate, mgfDate,category, discription, userId) VALUES(?,?,?,?,?,?,?,?)");

		preparedStatement.setString(1, product.getName());
		preparedStatement.setDouble(2, product.getPrice());
		preparedStatement.setInt(3, product.getQuantity());
		preparedStatement.setString(4, product.getExpDate());
		preparedStatement.setString(5, product.getMgfDate());
		preparedStatement.setString(6, product.getCategory());
		preparedStatement.setString(7, product.getDiscription());
		preparedStatement.setInt(8, product.getUserId());

		int count = preparedStatement.executeUpdate();

		connection.close();
		return count;
	}

	public List<Product> getAllProduct() throws Exception {
		Connection connection = getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM PRODUCT");
		ResultSet resultset = preparedStatement.executeQuery();
		List<Product> list = new ArrayList<Product>();
		while (resultset.next()) {
			Product product = new Product();
			product.setProductId(resultset.getInt("productId"));
			product.setName(resultset.getString("name"));
			product.setPrice(resultset.getDouble("price"));
			product.setQuantity(resultset.getInt("quantity"));
			product.setExpDate(resultset.getString("expDate"));
			product.setMgfDate(resultset.getString("mgfDate"));
			product.setCategory(resultset.getString("category"));
			product.setDiscription(resultset.getString("discription"));
			product.setUserId(resultset.getInt("userId"));

			list.add(product);
		}
		connection.close();
		return list;
	}

	public List<Product> getAllopathicProduct() throws Exception {
		Connection connection = getConnection();
		PreparedStatement preparedStatement = connection
				.prepareStatement("SELECT * FROM PRODUCT WHERE category='allopathic'");
		ResultSet resultset = preparedStatement.executeQuery();
		List<Product> list = new ArrayList<Product>();
		while (resultset.next()) {
			Product product = new Product();
			product.setProductId(resultset.getInt("productId"));
			product.setName(resultset.getString("name"));
			product.setPrice(resultset.getDouble("price"));
			product.setQuantity(resultset.getInt("quantity"));
			product.setExpDate(resultset.getString("expDate"));
			product.setMgfDate(resultset.getString("mgfDate"));
			product.setCategory(resultset.getString("category"));
			product.setDiscription(resultset.getString("discription"));
			product.setUserId(resultset.getInt("userId"));

			list.add(product);
		}
		connection.close();
		return list;
	}

	public List<Product> getAyurvedicProduct() throws Exception {
		Connection connection = getConnection();
		PreparedStatement preparedStatement = connection
				.prepareStatement("SELECT * FROM PRODUCT WHERE category='ayurvedic'");
		ResultSet resultset = preparedStatement.executeQuery();
		List<Product> list = new ArrayList<Product>();
		while (resultset.next()) {
			Product product = new Product();
			product.setProductId(resultset.getInt("productId"));
			product.setName(resultset.getString("name"));
			product.setPrice(resultset.getDouble("price"));
			product.setQuantity(resultset.getInt("quantity"));
			product.setExpDate(resultset.getString("expDate"));
			product.setMgfDate(resultset.getString("mgfDate"));
			product.setCategory(resultset.getString("category"));
			product.setDiscription(resultset.getString("discription"));
			product.setUserId(resultset.getInt("userId"));

			list.add(product);
		}
		connection.close();
		return list;
	}

	public List<Product> getHomeopathicProduct() throws Exception {
		Connection connection = getConnection();
		PreparedStatement preparedStatement = connection
				.prepareStatement("SELECT * FROM PRODUCT WHERE category='homeopathic'");
		ResultSet resultset = preparedStatement.executeQuery();
		List<Product> list = new ArrayList<Product>();
		while (resultset.next()) {
			Product product = new Product();
			product.setProductId(resultset.getInt("productId"));
			product.setName(resultset.getString("name"));
			product.setPrice(resultset.getDouble("price"));
			product.setQuantity(resultset.getInt("quantity"));
			product.setExpDate(resultset.getString("expDate"));
			product.setMgfDate(resultset.getString("mgfDate"));
			product.setCategory(resultset.getString("category"));
			product.setDiscription(resultset.getString("discription"));
			product.setUserId(resultset.getInt("userId"));

			list.add(product);
		}
		connection.close();
		return list;
	}

	public Product getProductByName(String name) throws Exception {
		Connection connection = getConnection();
		Product product = new Product();
		PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM PRODUCT WHERE name=?");
		preparedStatement.setString(1, name);
		ResultSet resultset = preparedStatement.executeQuery();
		while (resultset.next()) {

			product.setProductId(resultset.getInt("productId"));
			product.setName(resultset.getString("name"));
			product.setPrice(resultset.getDouble("price"));
			product.setQuantity(resultset.getInt("quantity"));
			product.setExpDate(resultset.getString("expDate"));
			product.setMgfDate(resultset.getString("mgfDate"));
			product.setCategory(resultset.getString("category"));
			product.setDiscription(resultset.getString("discription"));
			product.setUserId(resultset.getInt("userId"));

		}
		connection.close();
		return product;
	}

	public int UpdateAddedProduct(Product product) throws Exception {
		Connection connection = getConnection();

		PreparedStatement preparedStatement = connection
				.prepareStatement("UPDATE Product SET name=?, price=?, quantity=?, expDate=?, mgfDate=?, category=?, discription=? WHERE productId=?");
		preparedStatement.setString(1,product.getName());
		preparedStatement.setDouble(2, product.getPrice());
		preparedStatement.setInt(3, product.getQuantity());
		preparedStatement.setString(4, product.getExpDate());
		preparedStatement.setString(5, product.getMgfDate());
		preparedStatement.setString(6, product.getCategory());
		preparedStatement.setString(7, product.getDiscription());
		preparedStatement.setInt(8,product.getProductId());
		
		
		int result = preparedStatement.executeUpdate();
		connection.close();
		return result;
		
		
	}

}
