import {Component, OnInit} from '@angular/core';
import {Router, ActivatedRoute} from "@angular/router";
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
    public showSuccMess: boolean = false;
    public book: Book;
    
    constructor(private route: ActivatedRoute,private router: Router, private location: Location, private bookService: BookService) {}
    
    ngOnInit() {
        this.selectStatement()
    }
    
    public selectStatement(){
        this.route.queryParams.subscribe(params => {
            this.action = params['action'];
            
            if(this.action == 'add'){
                this.book = new Book()
            }else{
                this.bookId = +this.route.snapshot.paramMap.get('id');
                this.getBook(this.bookId)
            }
        });
    }
    
    public addBook(): void{
        this.bookService.addBook(this.book).subscribe((resp: Book)=>{
            if(resp.hasOwnProperty('id')){
                this.book = new Book(); 
                this.showSuccMess = true;
                setTimeout(()=>{this.showSuccMess = false;}, 1500)
            }
        })
    }
    
    public getBook(id: number): void {
        this.bookService.getBook(id).subscribe((resp: Book)=>{
            this.book = resp;
        })
    }
    
    public editBook(book: Book): void{
        this.bookService.editBook(book).subscribe((resp: Book)=>{
            if(resp.hasOwnProperty('id')){
                this.showSuccMess = true;
                setTimeout(()=>{
                    this.showSuccMess = false;
                    this.router.navigate(['/book/', resp.id])
                }, 1500)
            }
        })
    }
    
    public deleteBook(book: Book):void{
        this.bookService.deleteBook(book.id).subscribe((resp: Book)=>{
            if(resp.hasOwnProperty('id')){
                this.router.navigate([''])
            }
        })
    }
    
    public goBack(): void{
        this.location.back();
    }
}