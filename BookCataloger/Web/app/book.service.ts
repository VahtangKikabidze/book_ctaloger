import { Injectable } from '@angular/core';
import { HttpClient} from '@angular/common/http';
import {Book} from "./Objects/Book";

@Injectable()
export class BookService {

    private url = "/api/books";

    constructor(private http: HttpClient) {}

    public getBooks() {
        return this.http.get(this.url);
    }
    
    addBook(book: Book) {
        return this.http.post(this.url, book);
    }
    
    editBook(book: Book) {
        return this.http.put(this.url + '/' + book.id, book);
    }
    
    deleteBook(id: number) {
        return this.http.delete(this.url + '/' + id);
    }
}