package com.nt.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nt.entity.Books;
import com.nt.entity.ModelBook;
import com.nt.repo.BookRepo;

@Service
public class IBookServiceIMPL implements IBookService {
    @Autowired
    private BookRepo bookRepo;

    // Save Book
    @Override
    public String addBook(ModelBook mb) {

        Books book = new Books();

        BeanUtils.copyProperties(mb, book);

        book.setDeleted(false);

        bookRepo.save(book);

        return "Book Added Successfully";
    }

    // View Active Books
    @Override
    public List<ModelBook> viewBook() {

        List<Books> books = bookRepo.findByDeletedFalse();

        List<ModelBook> list = new ArrayList<>();

        for (Books b : books) {

            ModelBook mb = new ModelBook();

            BeanUtils.copyProperties(b, mb);

            list.add(mb);
        }
        return list;
    }
    // Update Book
    @Override
    public String updateBook(ModelBook modelBook) {

        Optional<Books> optional = bookRepo.findById(modelBook.getId());

        if (optional.isPresent()) {

            Books book = optional.get();

            book.setTitle(modelBook.getTitle());
            book.setAuthor(modelBook.getAuthor());
            book.setCategory(modelBook.getCategory());
            book.setPrice(modelBook.getPrice());
            book.setAvailable(modelBook.getAvailable());

            bookRepo.save(book);

            return "Book Updated Successfully";
        }

        return "Book Not Found";
    }

    // Soft Delete
    @Override
    public String deleteBook(int id) {

        Optional<Books> optional = bookRepo.findById((long) id);

        if (optional.isPresent()) {

            Books book = optional.get();

            book.setDeleted(true);

            bookRepo.save(book);

            return "Book Deleted Successfully";
        }

        return "Book Not Found";
    }

    // Get Book By Id
    @Override
    public ModelBook getBookById(Long id) {

        Optional<Books> optional = bookRepo.findById(id);

        if (optional.isPresent()) {

            ModelBook mb = new ModelBook();

            BeanUtils.copyProperties(optional.get(), mb);

            return mb;
        }

        return null;
    }

    // View Deleted Books
    @Override
    public List<ModelBook> getDeletedBooks() {

        List<Books> books = bookRepo.findByDeletedTrue();

        List<ModelBook> list = new ArrayList<>();

        for (Books b : books) {

            ModelBook mb = new ModelBook();

            BeanUtils.copyProperties(b, mb);

            list.add(mb);
        }
        return list;
    }
    // Restore Book
    @Override
    public String restoreBook(Long id) {

        Optional<Books> optional = bookRepo.findById(id);

        if (optional.isPresent()) {

            Books book = optional.get();

            book.setDeleted(false);

            bookRepo.save(book);

            return "Book Restored Successfully";
        }

        return "Book Not Found";
    }

    // Permanent Delete
    @Override
    public String permanentDelete(Long id) {

        if (bookRepo.existsById(id)) {

            bookRepo.deleteById(id);

            return "Book Permanently Deleted";
        }
        return "Book Not Found";
    }

}
	
	