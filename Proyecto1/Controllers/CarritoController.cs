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
    public class CarritoController
    {

        public void DeleteCarri(int ID)
        {
            List<SqlParameter> param = new List<SqlParameter>();
            param.Add(new SqlParameter("@ID", ID));
            Database.DB.ExecuteNonQuery("[dbo].[spDeleteCarri]", param);
        }
        public void SaveCarrito(Carrito carrito)
        {
            List<SqlParameter> param = new List<SqlParameter>()
            {
                   new SqlParameter("@LibroID", carrito.Id),
                   new SqlParameter("@Email", carrito.Email)
        };
            Database.DB.ExecuteNonQuery("[dbo].[spSaveCarri]", param);

        }

        public List<Carrito> GetCarri(string Email)
        {
            List<SqlParameter> param1 = new List<SqlParameter>()
            {
                 new SqlParameter("@Email",Email)
            };

            DataTable ds1 = Database.DB.ExecuteQuery("[dbo].[spGetCarri]", param1);
            List<m.Carrito> carri = new List<m.Carrito>();

            foreach (DataRow dr in ds1.Rows)
            {
                Carrito carrito = new Carrito()
                {
                    ID = Convert.ToInt16(dr["ID"]),
                    Id = Convert.ToInt16(dr["Id"]),
                    LibroID = Convert.ToInt16(dr["LibroID"]),
                    Foto = dr["Foto"].ToString(),
                    Autor = dr["Autor"].ToString(),
                    FechaPublicacion = dr["FechaPublicacion"].ToString(),
                    ISBN = dr["ISBN"].ToString(),
                    Precio = Convert.ToDouble(dr["Precio"]),
                    Titulo = dr["Titulo"].ToString(),
                };

                carri.Add(carrito);
            }
            return carri;
        }
    }

}  