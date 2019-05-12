import { Pipe, PipeTransform } from '@angular/core';

@Pipe({name: 'filterAuthor'})
export class FilterAuthorPipe implements PipeTransform {
    transform(value: any[], args?: any): any  {
        if (!value || !args) {
            return value;
        }
        let newArr: any = [];
        
        value.filter(item => {
            if(newArr.indexOf(item.author) === -1){
                newArr.push(item.author)
            }
        });
        return newArr;
    }
}
