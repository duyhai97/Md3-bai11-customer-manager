package service;

import model.Customer;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CustomerServiceImpl implements CustomerService{
    private static Map<Integer, Customer> customers;

    static {
        customers = new HashMap<>();
        customers.put(1, new Customer(1, "Nguyen Van A", "nguyenvana@gmail.com", "Hanoi"));
        customers.put(2, new Customer(1, "Nguyen Van B", "nguyenvanb@gmail.com", "Hanoi"));
        customers.put(3, new Customer(1, "Nguyen Van C", "nguyenvanc@gmail.com", "Hanoi"));
        customers.put(4, new Customer(1, "Nguyen Van D", "nguyenvand@gmail.com", "Hanoi"));
        customers.put(5, new Customer(1, "Nguyen Van E", "nguyenvane@gmail.com", "Hanoi"));

    }

    @Override
    public List<Customer> findAll() {
        return new ArrayList<>(customers.values());
    }

    @Override
    public void save(Customer customer) {
        customers.put(customer.getId(), customer);
    }

    @Override
    public Customer findById(int id) {
        return customers.get(id);
    }

    @Override
    public void update(int id, Customer customer) {
        customers.put(id, customer);
    }

    @Override
    public void remove(int id) {
        customers.remove(id);
    }
}
