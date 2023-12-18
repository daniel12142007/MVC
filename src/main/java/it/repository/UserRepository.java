package it.repository;

import it.model.User;

import java.util.List;

public interface UserRepository {
    void save(User user);

    void deleteById(Long id);

    User findById(Long id);

    List<User> findAll();

    void update(User user, Long id);

}