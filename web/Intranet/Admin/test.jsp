<%-- 
    Document   : test
    Created on : Jun 10, 2021, 12:30:26 PM
    Author     : jesus
--%>

<%@page import="servicio.empleadoServicioImp"%>
<%@page import="servicio.empleadoServicio"%>
<%@page import="servicio.empleadoServicio"%>
<%@page import="servicio.cuentaServicioImp"%>
<%@page import="servicio.tipoServicioImp"%>
<%@page import="servicio.personaServicioImp"%>
<%@page import="servicio.tipoServicio"%>
<%@page import="servicio.cuentaServicio"%>
<%@page import="servicio.personaServicio"%>
<%@page import="servicio.UbigeoServicioImp"%>
<%@page import="servicio.UbigeoServicio"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% personaServicio perSer=new personaServicioImp();
           cuentaServicio cuSer=new cuentaServicioImp();
           tipoServicio tipSer=new tipoServicioImp();
           empleadoServicio empSer=new empleadoServicioImp();
           UbigeoServicio ubiSer = new UbigeoServicioImp(); %>
        <%-- List lista=ubiSer.listarDep(); %>
        <% for (int i = 1; i < lista.size(); i++) { %>
        <% Object[] fil=(Object[]) lista.get(i); %>
        <p><%= fil[0] %></p>
        <% } --%>
        
        <%
            List lisId = ubiSer.listarId("Madre de Dios", "Tahuamanu", "Iberia");
            Object[] id = (Object[]) lisId.get(1);
            %>
                
        <h2><%= id[0] %></h2>
        <h2><%= id[1] %></h2>
        <h2><%= id[2] %></h2>
    </body>
</html>