using System.Collections.Generic;
using System.Linq;
using Microsoft.AspNetCore.Mvc;
using BookCataloger.Models;
 
namespace BookCataloger.Controllers
{
    [Route("api/books")]
    public class BooksController : Controller
    {
        ApplicationContext db;
        public BooksController(ApplicationContext context)
        {
            db = context;
            if(!db.Books.Any())
            {
                //db.Books.Add(new Book { Name = "iPhone X", Company="Apple", Price=79900 });

                db.SaveChanges();
            }
        }
        [HttpGet]
        public IEnumerable<Book> Get()
        {
            return db.Books.ToList();
        }
         
        [HttpGet("{id}")]
        public Book Get(int id)
        {
            Book book = db.Books.FirstOrDefault(x => x.id == id);
            return book;
        }
         
        [HttpPost]
        public IActionResult Post([FromBody]Book book)
        {
            if(ModelState.IsValid)
            {
                db.Books.Add(book);
                db.SaveChanges();
                return Ok(book);
            }
            return BadRequest(ModelState);
        }
         
        [HttpPut("{id}")]
        public IActionResult Put(int id, [FromBody]Book book)
        {
            if (ModelState.IsValid)
            {
                db.Update(book);
                db.SaveChanges();
                return Ok(book);
            }
            return BadRequest(ModelState);
        }
         
        [HttpDelete("{id}")]
        public IActionResult Delete(int id)
        {
            Book book = db.Books.FirstOrDefault(x => x.id == id);
            if(book!=null)
            {
                db.Books.Remove(book);
                db.SaveChanges();
            }
            return Ok(book);
        }
    }
}