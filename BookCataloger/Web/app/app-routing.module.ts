import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';

import {BookListComponent} from "./bookList/book-list.component";
import {BookViewComponent} from "./bookView/book-view.component";


const appRoutes: Routes = [
    { path: '', component: BookListComponent },
    { path: 'book/:id', component: BookViewComponent }
];

@NgModule({
    imports: [
        RouterModule.forRoot(
            appRoutes,
            { enableTracing: false } // <-- debugging purposes only
        )
    ],
    exports: [
        RouterModule
    ]
})
export class AppRoutingModule {}