import { NgModule }      from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { FormsModule }   from '@angular/forms';
import {HttpClientModule} from "@angular/common/http";
import { NgbPaginationModule } from "@ng-bootstrap/ng-bootstrap";

import { AppComponent }   from './app.component';
import { BookViewComponent } from "./bookView/book-view.component";
import { BookListComponent } from "./bookList/book-list.component";
import { AppRoutingModule } from "./app-routing.module";


@NgModule({
    imports:      [ BrowserModule, FormsModule, NgbPaginationModule, AppRoutingModule, HttpClientModule ],
    declarations: [ AppComponent, BookViewComponent, BookListComponent ],
    bootstrap:    [ AppComponent ]
})

export class AppModule { }