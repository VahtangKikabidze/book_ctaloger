import {Component, Input, OnInit} from '@angular/core';
import {Router, ActivatedRoute, ParamMap, NavigationEnd} from "@angular/router";
import {Location} from "@angular/common";
import {Book} from "../Objects/Book";
import {BookService} from "../book.service";

@Component({
    selector: 'book-view',
    templateUrl: '../bookView/book-view.component.html',
    providers: [BookService]
})
export class BookViewComponent implements OnInit{
    
    public bookId: number;
    private action:string;

    public book: Book;
    
    constructor(private route: ActivatedRoute,private router: Router, private location: Location, private bookService: BookService) {
        this.router.events.subscribe(event => {
            if(event instanceof NavigationEnd)
                this.selectStatement()
        });
    }
    ngOnInit() {
        this.bookId = +this.route.snapshot.paramMap.get('id');
        this.selectStatement()
    }
    
    public selectStatement(): void{
        this.route.queryParams.subscribe(params => {this.action = params['action'];});
        
        if(this.action == 'add'){
            this.book = new Book()
        }else{
            this.book = this.getBook(this.bookId)
        }
    }
    
    public addBook(): void{
        
        this.bookService.addBook(this.book).subscribe((resp)=>{
            console.log(resp)
        })
       
    }
    
    public getBook(id: number): Book {
        
        return {
            id: 1,
            Name: "Война и мир",
            Author: "Лев Толстой",
            Year: 20019,
            Genre: " Историческа драмма",
            Description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, nisi."
        } 
    }
    
    public editBook(id: number): void{
        
    }
    
    public goBack(): void{
        this.location.back();
    }
}