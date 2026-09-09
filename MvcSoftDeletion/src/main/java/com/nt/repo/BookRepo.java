package com.nt.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.nt.entity.Books;

public interface BookRepo extends JpaRepository<Books, Long> {

	List<Books> findByDeletedFalse();

    List<Books> findByDeletedTrue();
}
