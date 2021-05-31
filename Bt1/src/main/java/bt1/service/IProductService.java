package bt1.service;

import bt1.model.Product;

import java.util.List;

public interface IProductService {
    List<Product> showAll();
    void addProduct(Product product);
    Product checkId(int id);
    void updateProduct(int id, Product product);
    void deleteProduct(int id);
    Product findProductByName(String name);
}
