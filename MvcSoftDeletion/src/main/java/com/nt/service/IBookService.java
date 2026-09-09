package com.nt.service;

import java.util.List;

import com.nt.entity.ModelBook;

public interface IBookService {
	public String addBook(ModelBook mb);
	public List<ModelBook> viewBook();
	public String updateBook(ModelBook books);
	public String deleteBook(int id);
	
	ModelBook getBookById(Long id);

	List<ModelBook> getDeletedBooks();

	String restoreBook(Long id);

	String permanentDelete(Long id);

}
