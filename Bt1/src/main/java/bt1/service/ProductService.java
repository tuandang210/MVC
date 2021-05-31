package bt1.service;

import bt1.model.Product;

import javax.servlet.RequestDispatcher;
import java.util.ArrayList;
import java.util.List;

public class ProductService implements IProductService {
    public static List<Product> products = new ArrayList<>();

    static {
        products.add(new Product(0, "Dell", 15000, "Tablet", "Dell"));
        products.add(new Product(1, "Asus", 16500, "Phone", "Asus"));
        products.add(new Product(2, "Apple", 45000, "Laptop", "Lenovo"));
        products.add(new Product(3, "MSI", 55000, "PC", "MSI"));
    }

    @Override
    public List<Product> showAll() {
        return new ArrayList<>(products);
    }

    @Override
    public void addProduct(Product product) {
        products.add(product.getId(), product);
    }

    @Override
    public Product checkId(int id) {
        return products.get(id);
    }

    @Override
    public void updateProduct(int id, Product product) {
        products.set(id, product);
    }

    @Override
    public void deleteProduct(int id) {
        products.remove(id);
    }

    @Override
    public Product findProductByName(String name) {
        int index=-1;
        for (int i = 0; i<products.size();i++){
            if(name.equals(products.get(i).getName())){
                index = i;
                break;
            }
        }if(index!=-1){
            return products.get(index);
        }else {
            return null;
        }
    }
}
