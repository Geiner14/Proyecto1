﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Favoritos.aspx.cs" Inherits="Proyecto1.Views.Favoritos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Favoritos</title>
</head>
<body style="background-color:aliceblue">
    <form id="form1" runat="server">
        <div>
             <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                <div class="container-fluid">
                    <a class="navbar-brand" href="Books.aspx">Librería Internacional</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarColor01">
                        <ul class="navbar-nav me-auto">

    
                            <li class="nav-item">
                                <a class="nav-link" href="Carrito.aspx">Carrito de compras </a>
                            </li>
                             <li class="nav-item">
                                <a class="nav-link" href="Compras.aspx">Compras </a>
                            </li>

                        </ul>
                       
                    </div>
                </div>
            </nav>
                 <div id="divAlert" runat="server" class="alert alert-dark" role="alert" hidden="hidden">
            </div>
           
   <div class="container-fluid ml-3" style="margin-top: 1%; margin-left: 1%">
            <div class="row">
                <asp:Repeater ID="Rep_Favoritos" runat="server">
                    <ItemTemplate>
                        <div class="card mb-3" style="max-width: 30%; max-height: 30%; margin-right: 2%">
                            <div class="row g-0">
                                <div class="col-md-4">
                                    <img style="margin-top: 10%" src="../<%# Eval("Foto") %>" class="img-fluid rounded-start">
                                </div>
                                <div class="col-md-8">
                                    <div class="card-body">
                                        <h5 class="card-title"><%# Eval("Titulo") %></h5>
                                        <p class="card-text">Autor: <%# Eval("Autor") %></p>
                                        <p class="card-text">Fecha de publicacion: <%# Eval("FechaPublicacion") %></p>
                                         <p class="card-text">ISBN: <%# Eval("ISBN") %></p>
                                        <strong class="card-text">Precio: ₡<%# Eval("Precio") %></strong>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
        </div>
    </form>
    <style>
        body {
            background-size: 20%;
            background-image: url("https://previews.123rf.com/images/zinako/zinako1708/zinako170800763/85385162-diversi%C3%B3n-de-patrones-sin-fisuras-con-libros-de-dibujos-animados-se-puede-utilizar-para-fondo-de-pan.jpg");
            width: 100vw;
            height: 100vh;
            position: absolute;
        }
    </style>
</body>

</html>
