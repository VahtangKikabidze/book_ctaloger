import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import {Book} from "./Objects/Book";

@Injectable()
export class BookService {

    private url = "/api/books";

    constructor(private http: HttpClient) {}

    public getBooks() {
        return this.http.get(this.url);
    }

    public getBook(id: number) {
        return this.http.get(this.url + '/' + id);
    }
    
    public addBook(book: Book) {
        return this.http.post(this.url, book);
    }
    
    public editBook(book: Book){
        return this.http.put(this.url + '/' + book.id, book);
    }
    
    public deleteBook(id: number) {
        return this.http.delete(this.url + '/' + id);
    }
}