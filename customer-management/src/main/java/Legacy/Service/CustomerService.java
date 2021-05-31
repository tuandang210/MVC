package Legacy.Service;

import Legacy.Model.Customer;

import java.util.List;

public interface CustomerService {
    List<Customer> findALl();
    void save(Customer customer);
    Customer findById(int id);
    void update(int id, Customer customer);
    void remove(int id);
}
