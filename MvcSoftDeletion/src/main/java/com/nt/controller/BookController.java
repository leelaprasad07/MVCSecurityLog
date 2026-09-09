package com.nt.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nt.entity.ModelBook;
import com.nt.service.IBookService;

@Controller
@RequestMapping("/books")
public class BookController {

    @Autowired
    private IBookService bookService;

    // View Active Books
    @GetMapping
    public String viewBooks(Model model) {
        model.addAttribute("books", bookService.viewBook());
        return "book-list";
    }

    // Add Book Form
    @GetMapping("/add")
    public String addBookForm(Model model) {
        model.addAttribute("book", new ModelBook());
        return "add-book";
    }

    // Save Book
    @PostMapping("/save")
    public String saveBook(@Validated @ModelAttribute("book") ModelBook book,
                           BindingResult result) {

        if (result.hasErrors()) {
            return "add-book";
        }

        bookService.addBook(book);
        return "redirect:/books";
    }
    // Edit Form
    @GetMapping("/edit/{id}")
    public String editBook(@PathVariable Long id, Model model) {

        model.addAttribute("book", bookService.getBookById(id));
        return "edit-book";
    }

    // Update Book
    @PostMapping("/update")
    public String updateBook(@ModelAttribute("book") ModelBook book) {

        bookService.updateBook(book);
        return "redirect:/books";
    }

    // Soft Delete
    @GetMapping("/delete/{id}")
    public String deleteBook(@PathVariable int id) {

        bookService.deleteBook(id);
        return "redirect:/books";
    }

    // Trash Books
    @GetMapping("/trash")
    public String trashBooks(Model model) {

        model.addAttribute("books", bookService.getDeletedBooks());
        return "trash-books";
    }
    // Restore Book
    @GetMapping("/restore/{id}")
    public String restoreBook(@PathVariable Long id) {

        bookService.restoreBook(id);
        return "redirect:/books/trash";
    }
    @GetMapping("/permanent-delete/{id}")
    public String permanentDelete(@PathVariable Long id) {
    	
        bookService.permanentDelete(id);
        return "redirect:/books/trash";
    }
}
