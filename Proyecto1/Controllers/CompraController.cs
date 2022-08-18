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
    public class CompraController
    {
        public void Guardar_Compras(Compra compra)
        {
            List<SqlParameter> param = new List<SqlParameter>();
            
            param.Add(new SqlParameter("@CodigoLibro", compra.CodigoLibro));
            param.Add(new SqlParameter("@Correo", compra.Correo));
            param.Add(new SqlParameter("@Cantidadlibros", compra.Cantidadlibros));
            param.Add(new SqlParameter("@Fechacompra", compra.Fechacompra));
            param.Add(new SqlParameter("@Fechallegadacompra", compra.Fechallegadacompra));
            param.Add(new SqlParameter("@MontoIVA", compra.MontoIVA));
            param.Add(new SqlParameter("@MontosinIVA", compra.MontosinIVA));
            param.Add(new SqlParameter("@Montofinal", compra.Montofinal));
            param.Add(new SqlParameter("@MontoUnidad", compra.MontoUnidad));
            param.Add(new SqlParameter("@Nombre", compra.Nombre));
            param.Add(new SqlParameter("@Pais", compra.Pais));
            param.Add(new SqlParameter("@Estado", compra.Estado));
            param.Add(new SqlParameter("@Direccionentrega", compra.Direccionentrega));
            param.Add(new SqlParameter("@Codigopostal", compra.Codigopostal));
            param.Add(new SqlParameter("@Numerotarjeta", compra.Numerotarjeta));
            param.Add(new SqlParameter("@Fechaexpiracion", compra.Fechaexpiracion));
            param.Add(new SqlParameter("@Codigoseguridad", compra.Codigoseguridad));

            Database.DB.ExecuteNonQuery("[dbo].[spSaveCompra]", param);
        }

        public List<Compra> GetCompras(string Email)
        {
            List<SqlParameter> param1 = new List<SqlParameter>()
            {
                 new SqlParameter("@Correo",Email)
            };

            DataTable ds1 = Database.DB.ExecuteQuery("[dbo].[spGetCompras]", param1);
            List<m.Compra> carri = new List<m.Compra>();

            foreach (DataRow dr in ds1.Rows)
            {
                Compra compra = new Compra()
                {
                    CodigoLibro = Convert.ToInt16(dr["CodigoLibro"]),
                    Correo = dr["Correo"].ToString(),
                    Cantidadlibros = Convert.ToInt16(dr["Cantidadlibros"]),
                    Fechacompra = Convert.ToDateTime(dr["Fechacompra"]).ToShortDateString(),
                    Fechallegadacompra = Convert.ToDateTime(dr["Fechallegadacompra"]).ToShortDateString(),
                    MontoIVA = Convert.ToInt32(dr["MontoIVA"]),
                    Montofinal = Convert.ToInt32(dr["Montofinal"]),
                    MontosinIVA = Convert.ToInt32(dr["MontosinIVA"]),
                    MontoUnidad = Convert.ToInt32(dr["MontoUnidad"]),
                    Foto = dr["Foto"].ToString(),
                    Titulo = dr["Titulo"].ToString(),
                    Nombre = dr["Nombre"].ToString(),
                    Pais = dr["Pais"].ToString(),
                    Estado = dr["Estado"].ToString(),
                    Codigopostal = dr["Codigopostal"].ToString(),
                    Direccionentrega = dr["Direccionentrega"].ToString(),
                };

                carri.Add(compra);
            }
            return carri;
        }
    }
}