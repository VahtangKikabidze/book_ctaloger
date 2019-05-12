var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};
import { Component } from '@angular/core';
import { Router, ActivatedRoute, NavigationEnd } from "@angular/router";
import { Location } from "@angular/common";
import { Book } from "../Objects/Book";
import { BookService } from "../book.service";
let BookViewComponent = class BookViewComponent {
    constructor(route, router, location, bookService) {
        this.route = route;
        this.router = router;
        this.location = location;
        this.bookService = bookService;
        this.router.events.subscribe(event => {
            if (event instanceof NavigationEnd)
                this.selectStatement();
        });
    }
    ngOnInit() {
        this.bookId = +this.route.snapshot.paramMap.get('id');
        this.selectStatement();
    }
    selectStatement() {
        this.route.queryParams.subscribe(params => { this.action = params['action']; });
        if (this.action == 'add') {
            this.book = new Book();
        }
        else {
            this.book = this.getBook(this.bookId);
        }
    }
    addBook() {
        this.bookService.addBook(this.book).subscribe((resp) => {
            console.log(resp);
        });
    }
    getBook(id) {
        return {
            id: 1,
            Name: "Война и мир",
            Author: "Лев Толстой",
            Year: 20019,
            Genre: " Историческа драмма",
            Description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, nisi."
        };
    }
    editBook(id) {
    }
    goBack() {
        this.location.back();
    }
};
BookViewComponent = __decorate([
    Component({
        selector: 'book-view',
        templateUrl: '../bookView/book-view.component.html',
        providers: [BookService]
    }),
    __metadata("design:paramtypes", [ActivatedRoute, Router, Location, BookService])
], BookViewComponent);
export { BookViewComponent };
//# sourceMappingURL=book-view.component.js.map