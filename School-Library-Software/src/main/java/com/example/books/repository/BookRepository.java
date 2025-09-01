package com.example.books.repository;

import org.springframework.data.repository.CrudRepository;
import com.example.books.entity.*;
 
public interface BookRepository extends CrudRepository<Book, Integer> {
}