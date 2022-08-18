using Proyecto1.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Proyecto1.Controllers
{
    public class BooksController
    {
        public List<Books> GetBooks()
        {
            List<Books> books = new List<Books>();

            DataTable ds = Database.DB.ExecuteSql("SELECT * FROM Books");

            foreach (DataRow row in ds.Rows)
            {
                books.Add(new Books()
                {
                    Id = Convert.ToInt16(row["Id"]),
                    ISBN = row["ISBN"].ToString(),
                    Titulo = row["Titulo"].ToString(),
                    Autor = row["Autor"].ToString(),
                    FechaPublicacion = row["FechaPublicacion"].ToString(),
                    Foto = row["Foto"].ToString(),
                    Precio = Convert.ToDouble(row["Precio"]),
                   
                });
            }

            return books;
        }

        public List<Books> Getbook(int LibroId)
        {
            List<Books> book = GetBooks();

            foreach (Books books in book)
            {
                if (books.Id == LibroId)
                {
                    book.Clear();
                    book.Add(books);
                    return book;
                }
            }

            return null;
        }
       

    }
}