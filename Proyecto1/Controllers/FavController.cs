using Proyecto1.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using m = Proyecto1.Models;


namespace Proyecto1.Controllers
{
    public class FavController {

        public void SaveFav(Favoritos favoritos)
        {
            List<SqlParameter> param = new List<SqlParameter>()
            {
                   new SqlParameter("@LibroID", favoritos.Id),
                   new SqlParameter("@Email", favoritos.Email),
        };
            

            Database.DB.ExecuteNonQuery("[dbo].[spSaveFav]", param);
        }

        public List<Favoritos> Getfav(string Email)
        {
            List<SqlParameter> param1 = new List<SqlParameter>()
            {
                 new SqlParameter("@Email",Email)
            };

            DataTable ds1 = Database.DB.ExecuteQuery("[dbo].[spGetFav]", param1);
            List<m.Favoritos> fav = new List<m.Favoritos>();

            foreach (DataRow dr in ds1.Rows)
            {
               Favoritos Favorito = new Favoritos()
                {
                 
                   Foto = dr["Foto"].ToString(),
                    Autor = dr["Autor"].ToString(),
                   FechaPublicacion = dr["FechaPublicacion"].ToString(),
                   ISBN = dr["ISBN"].ToString(),
                    Precio = Convert.ToDouble(dr["Precio"]),
                    Titulo = dr["Titulo"].ToString(),
                };

                fav.Add(Favorito);
            }
            return fav;
        }
    }
}