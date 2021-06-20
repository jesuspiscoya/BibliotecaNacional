<%@page import="java.util.List"%>
<%@page import="vista.PresentadorGeneral"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../../css/style.css">
        <script src="https://kit.fontawesome.com/50872a9b90.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
        <title>Biblioteca</title>
    </head>
    <body class="p-0 ">
        <main class="container-fluid p-0  ">
            <jsp:include page="navAdmin.jsp" />
            <div class="d-flex" style="height: 94vh">
                <div class="col-1 py-4 d-flex shadow-sm p-3 mb-5 bg-primary rounded">
                    <ul class="navbar-nav d-flex justify-content-between me-auto mb-2 mb-lg-0">
                        <li class="nav-item shadow-sm p-3 bg-body rounded">
                            <a class="nav-link active text-dark text-center" aria-current="page" href="empleados.jsp"><i
                                    class="fas fa-users-cog w-100 h3 text-center"></i>Empleados</a>
                        </li>
                        <li class="nav-item shadow-sm p-3 bg-body rounded">
                            <form action="../../ClienteControl" method="post">
                                <i class="fas fa-user-tag w-100 h3 text-center"></i>
                                <input class="nav-link active text-dark text-center border-0 bg-body m-auto p-2" type="submit" name="acc" value="Clientes" >
                            </form>
                        </li>
                        <li class="nav-item shadow-sm p-3 bg-danger rounded">
                            <form action="../../PedidoControl" method="post">
                                <i class="fas fa-truck-loading w-100 h3 text-center"></i>
                                <input class="nav-link active text-dark text-center border-0 bg-danger m-auto p-2" type="submit" name="acc" value="Pedidos" >
                            </form>
                        </li>
                        <li class="nav-item shadow-sm p-3 bg-body rounded">
                            <a class="nav-link active text-dark text-center" aria-current="page" href="libros.jsp"><i
                                    class="fas fa-book-open w-100 h3 text-center"></i>Libros</a>
                        </li>
                        <li class="nav-item shadow-sm p-3 bg-body rounded">
                            <form action="../../PedidoControl" method="post">
                                <i class="fas fa-clipboard-list w-100 h3 text-center"></i>
                                <input class="nav-link active text-dark text-center border-0 bg-body m-auto p-2" type="submit" name="acc" value="Boletas" >
                            </form>
                        </li>
                    </ul>
                </div>
                <div class="col-11" id="#">
                    <div class="d-flex px-5">
                        <div class="col-6">
                            <div class="row">
                                <div class="col-12 my-4">
                                    <div class="input-group mb-3">
                                        <div class="row w-100 px-2">
                                            <% PresentadorGeneral pe = (PresentadorGeneral) session.getAttribute("pg");%>
                                            <% Object[] pedido = pe.getPedido();%>
                                            <div class="d-flex justify-content-between">
                                                <form action="../../PedidoControl" method="post" class="col-10">
                                                    <div class="row col-12">
                                                        <div class="col-9">
                                                            <input type="text" class="form-control rounded-pill" required placeholder="Buscar Pedido por código" name="cod" maxlength="8" onkeyup="this.value=Numeros(this.value)" aria-label="Recipient's username" aria-describedby="button-addon2">
                                                        </div>
                                                        <div class="col-3 d-flex flex-column">
                                                            <input class="btn btn-secondary" type="submit" id="button-addon2" name="acc" value="Buscar">
                                                        </div>
                                                    </div>
                                                </form>
                                                <form action="../../PedidoControl" method="post" class="col-2">
                                                    <div class="d-flex flex-column">
                                                        <input class="btn btn-secondary" type="submit" id="button-addon2" name="acc" value="Limpiar">
                                                    </div>
                                                </form>
                                            </div>
                                            <div class="col-12 mt-3" id="mostrar">
                                                <div class="form-floating">
                                                    <input type="text" class="form-control" id="floatingInputGrid" readonly value="<%=pedido[0]%>">
                                                    <label for="floatingInputGrid">Codigo</label>
                                                </div>
                                            </div>
                                            <div class="col-6 mt-3" id="mostrar">
                                                <div class="form-floating">
                                                    <input type="text" class="form-control" id="floatingInputGrid" readonly value="<%=pedido[1]%>">
                                                    <label for="floatingInputGrid">Nombre</label>
                                                </div>
                                            </div>
                                            <div class="col-6 mt-3" id="mostrar">
                                                <div class="form-floating">
                                                    <input type="text" class="form-control" id="floatingInputGrid" readonly value="<%=pedido[2]%>">
                                                    <label for="floatingInputGrid">Apellidos</label>
                                                </div>
                                            </div>
                                            <div class="col-6 mt-3" id="mostrar">
                                                <div class="form-floating">
                                                    <input type="text" class="form-control" id="floatingInputGrid" readonly value="<%=pedido[3]%>">
                                                    <label for="floatingInputGrid">Dni</label>
                                                </div>
                                            </div>
                                            <div class="col-6 mt-3" id="mostrar">
                                                <div class="form-floating">
                                                    <input type="text" class="form-control" id="floatingInputGrid" readonly value="<%=pedido[4]%>">
                                                    <label for="floatingInputGrid">Direccion</label>
                                                </div>
                                            </div>
                                            <div class="col-6 mt-3" id="mostrar">
                                                <div class="form-floating">
                                                    <input type="text" class="form-control" id="floatingInputGrid" readonly value="<%=pedido[5]%>">
                                                    <label for="floatingInputGrid">Fecha de pedido</label>
                                                </div>
                                            </div>
                                            <div class="col-6 mt-3" id="mostrar">
                                                <%! String estado, estilo; %>
                                                <% estado = pedido[6].toString(); %>
                                                <% if (estado.equals("1")) {
                                                        estado = "Aceptado";
                                                        estilo = "bg-success";
                                                    } else if (estado.equals("2")) {
                                                        estado = "Rechazado";
                                                        estilo = "bg-danger";
                                                    } else if (estado.equals("0")) {
                                                        estado = "Pendiente";
                                                        estilo = "bg-primary";
                                                    } else
                                                         estilo = ""; %>

                                                <div class="form-floating">
                                                    <input type="text" class="form-control <%= estilo %>" id="floatingInputGrid" readonly value="<%= estado %>">
                                                    <label for="floatingInputGrid">Estado</label>
                                                </div>
                                            </div>
                                            <div class="col-12 mt-3" id="mostrar">
                                                <div class="form-floating">
                                                    <% String total="S/  "+pedido[7]; %>
                                                    <input type="text" class="form-control" id="floatingInputGrid" readonly value="<%= total %>">
                                                    <label for="floatingInputGrid">Total</label>
                                                </div>
                                            </div>
                                            <div class="col-5 m-auto mt-3 p-2">
                                                <div class="card shadow bg-body rounded border-1 ">
                                                    <div class="card-body  d-flex  justify-content-center">
                                                        <form action="../../PedidoControl" method="post" class="d-flex  justify-content-center ">
                                                            <input type="hidden" name="cod" value="<%=pedido[0]%>"> 
                                                            <input type="submit" name="acc" class="btn btn-success btn-lg  mx-5 fw-bold " value="Aceptar Pedido">
                                                            <input type="submit" name="acc" class="btn btn-danger mx-5 btn-lg fw-bold " value="Rechazar Pedido">
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-12 m-auto my-4">
                                                <div class="card shadow  bg-body rounded border-1">
                                                    <div class="card-body  d-flex">
                                                        <a href="#pendientes" class="btn btn-secondary mx-5 fw-bold ">Pedidos Pendientes</a>
                                                        <a href="#aceptados" class="btn btn-secondary mx-5 fw-bold ">Pedidos Aceptados</a>
                                                        <a href="#rechazados" class="btn btn-secondary mx-5 fw-bold ">Pedidos Rechazados</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-6 d-flex flex-column">
                            <% if (pe.getMsg().toString() != "") { %>
                            <div class="alert alert-warning alert-dismissible fade show mt-4" role="alert">
                                <h4 class="fw-bold text-center text-dark my-2"><%= pe.getMsg() %></h4>
                                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                            </div>
                            <% pe.setMsg(""); %>
                            <% } %>
                            <h4 class="fw-bold text-secondary text-center my-4">Detalle del pedido</h4>
                            <table class="table table-light table-striped  shadow  bg-body rounded border-1 ">
                                <thead>
                                    <tr>
                                        <th scope="col">Id Detalle</th>
                                        <th scope="col">Nombre del libro</th>
                                        <th scope="col">Cantidad</th>
                                        <th scope="col">Precio</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <% List Lista = pe.getListaDetalle(); %>
                                    <% for (int i = 1; i < Lista.size(); i++) { %>
                                    <% Object[] f = (Object[]) Lista.get(i);%>
                                    <tr class="">
                                        <th scope="row">
                                            <input type="text"  value="<%= f[0]%>" class="form-control text-center" readonly>
                                        </th>
                                        <th scope="row">
                                            <input type="text"  value="<%= f[1]%>" class="form-control text-center" readonly>
                                        </th>
                                        <th scope="row">
                                            <input type="text"  value="<%= f[2]%>" class="form-control text-center" readonly>
                                        </th>
                                        <th scope="row">
                                            <div class="input-group">
                                                <span class="input-group-text">S/ </span>
                                                <input type="text" value="<%= f[3] %>"  class="form-control " readonly>
                                            </div>
                                        </th>
                                    </tr>
                                    <% } %>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div class="d-flex flex-column">
                <div class="col-5 m-auto d-flex justify-content-center align-items-center flex-column" style="height: 100vh" id="pendientes">
                    <h1 class="fw-bold text-center text-primary my-5">Lista de Pedidos Pendientes</h1>
                    <% List Pendiente = (List) session.getAttribute("Pendiente");%>
                    <table class="table table-light table-striped shadow bg-body rounded border-1">
                        <thead>
                            <tr>
                                <th scope="col">Codigo</th>
                                <th scope="col">Nombre</th>
                                <th scope="col">Dni</th>
                                <th scope="col">Total</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="">
                                <% for (int i = 1; i < Pendiente.size(); i++) { %>
                                <% Object[] p = (Object[]) Pendiente.get(i);%>
                                <form action="../../PedidoControl" method="post">
                                    <th scope="row">
                                        <input type="text" name="cod" value="<%= p[0]%>" class="form-control text-center"  readonly>
                                    </th>
                                    <td>
                                        <input type="text" value="<%= p[1]%>" class="form-control text-center "  readonly>
                                    </td>
                                    <td>
                                        <input type="text" value="<%= p[2]%>" class="form-control text-center "  readonly>
                                    </td>
                                    <td>
                                        <div class="input-group mb-3 " style="width: 120px">
                                            <span class="input-group-text">S/.</span>
                                            <input type="text" value="<%= p[4]%>"  class="form-control " readonly>
                                        </div>
                                    </td>
                                    <td>
                                        <input type="submit" name="acc" value="Ver Detalles" class=" btn btn-success">
                                    </td>
                                </form>
                            </tr>
                        <% } %>
                        </tbody>
                    </table>
                    <a href="#" class="btn btn-secondary w-25 my-4 py-3 mx-auto fw-bold">Regresar</a>
                </div>
                <div class="col-5 m-auto d-flex justify-content-center align-items-center flex-column" style="height: 100vh" id="aceptados">
                    <h1 class="fw-bold text-center text-primary my-5">Lista de Pedidos Aceptados</h1>
                    <% List Aceptados = (List) session.getAttribute("Aceptados");%>
                    <table class="table table-light table-striped  shadow  bg-body rounded border-1">
                        <thead>
                            <tr>
                                <th scope="col">Codigo</th>
                                <th scope="col">Nombre</th>
                                <th scope="col">Dni</th>
                                <th scope="col">Total</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="">
                                <% for (int i = 1; i < Aceptados.size(); i++) { %>
                                <% Object[] a = (Object[]) Aceptados.get(i);%>
                                <form action="../../PedidoControl" method="post">
                                    <th scope="row">
                                        <input type="text" name="cod" value="<%= a[0]%>" class="form-control text-center"  readonly>
                                    </th>
                                    <td>
                                        <input type="text" value="<%= a[1]%>" class="form-control text-center "  readonly>
                                    </td>
                                    <td>
                                        <input type="text" value="<%= a[2]%>" class="form-control text-center "  readonly>
                                    </td>
                                    <td>
                                        <div class="input-group mb-3 " style="width: 120px">
                                            <span class="input-group-text">S/.</span>
                                            <input type="text" value="<%= a[4]%>"  class="form-control " readonly>
                                        </div>
                                    </td>
                                    <td>
                                        <input type="submit" name="acc" value="Ver Detalles" class=" btn btn-success">
                                    </td>
                                </form>
                            </tr>
                            <% } %>
                        </tbody>
                    </table>
                    <a href="#" class="btn btn-secondary w-25 my-4 py-3 mx-auto fw-bold">Regresar</a>
                </div>
                <div class="col-5 m-auto d-flex justify-content-center align-items-center flex-column" style="height: 100vh" id="rechazados">
                    <h1 class="fw-bold text-center text-primary my-5">Lista de Pedidos Rechazados</h1>
                    <% List Rechazados = (List) session.getAttribute("Rechazados");%>
                    <table class="table table-light table-striped  shadow  bg-body rounded border-1">
                        <thead>
                            <tr>
                                <th scope="col">Codigo</th>
                                <th scope="col">Nombre</th>
                                <th scope="col">Dni</th>
                                <th scope="col">Total</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="">
                                <% for (int i = 1; i < Rechazados.size(); i++) { %>
                                <% Object[] r = (Object[]) Rechazados.get(i);%>
                                <form action="../../PedidoControl" method="post">
                                    <th scope="row">
                                        <input type="text" name="cod" value="<%= r[0]%>" class="form-control text-center"  readonly>
                                    </th>
                                    <td>
                                        <input type="text" value="<%= r[1]%>" class="form-control text-center "  readonly>
                                    </td>
                                    <td>
                                        <input type="text" value="<%= r[2]%>" class="form-control text-center "  readonly>
                                    </td>
                                    <td>
                                        <div class="input-group mb-3 " style="width: 120px">
                                            <span class="input-group-text">S/.</span>
                                            <input type="text" value="<%= r[4]%>"  class="form-control " readonly>
                                        </div>
                                    </td>
                                    <td>
                                        <input type="submit" name="acc" value="Ver Detalles" class=" btn btn-success">
                                    </td>
                                </form>
                            </tr>
                            <% } %>
                        </tbody>
                    </table>
                    <a href="#" class="btn btn-secondary w-25 my-4 py-3 mx-auto fw-bold">Regresar</a>
                </div>
            </div>
        </main>
    </body>
</html>