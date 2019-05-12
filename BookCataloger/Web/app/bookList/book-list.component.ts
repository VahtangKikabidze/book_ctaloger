import { Component, OnInit} from '@angular/core';

import {Book} from "../Objects/Book";
import {BookService} from "../book.service";

@Component({
    selector: 'book-list',
    templateUrl: '../bookList/book-list.component.html',
    providers: [BookService]
})
export class BookListComponent implements OnInit{
    constructor(private bookService: BookService){}
    
    public books: Book[];
    public booksToView: Book[];
    public pageSize: number = 10;
    public filteringArray: string[] = new Array<string>();
    public page: number = 1;
    
    ngOnInit(): void {
        this.getBooks();
    }
 
    public getBooks(): void{
        this.bookService.getBooks().subscribe((resp:Book[])=>{
            this.books = resp;
            this.booksToView = resp;
        })
    }
    
    public generateFilterArray(author: string): void{

        const index:number = this.filteringArray.indexOf(author);
        
        if(index === -1){
            this.filteringArray.push(author)
        }else{
            this.filteringArray.splice(index, 1);
        }
        
        this.sortBooks();
    }
    
    public sortBooks():void{
        if(this.filteringArray.length != 0){
            
            this.booksToView = new Array<Book>();

            this.books.filter((item: Book) => {
                if(this.filteringArray.indexOf(item.author) !== -1){
                    this.booksToView.push(item)
                }
            });
        }else {
            this.booksToView = this.books;
        }
    }
}