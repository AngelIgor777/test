package org.example.demospringdocker1.repository;

import org.example.demospringdocker1.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Integer> {
}
