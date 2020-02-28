<%-- 
    Document   : pueblos
    Created on : 10-feb-2020, 21:14:42
    Author     : Usuario1
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .botones {
                display: inline-block;
                text-decoration: none;
                min-width: 40px;
                height: 20px;
                background-color: blue;
                color: white;
                padding: 15px 30px;
                transition: all 0.5s;
                border-radius: 30%;
            }
            .botones:hover {
                background-color: graytext;
                color: black;
            }

        </style>
    </head>
    <body>
        <form action="Poblaciones" method="POST">
            <% String provincia_activa = (String) request.getAttribute("provincia");
                ArrayList<String> pueblos = (ArrayList<String>) request.getAttribute("pueblos");
                ArrayList<String> provincias = (ArrayList<String>) request.getAttribute("provincias");
            %>
            <h1>Pueblos de Castilla-La Mancha</h1>

            <h2>Provincia: <%=provincia_activa%></h2>
            <% for (int p = 0; p < provincias.size(); p++) {%>

            <% if (provincias.get(p).equals(provincia_activa)) {%>
            <a href="Poblaciones?provincia=<%=provincias.get(p)%>" class="botones seleccionado"><%=provincias.get(p)%> </a>
            <% } else {%>
            <a href="Poblaciones?provincia=<%=provincias.get(p)%>" class="botones"><%=provincias.get(p)%> </a>
            <% } %>

            <% } %>

            <br><br><br>

            Pueblos:<select name="pueblos">
                <% for (int i = 0; i < pueblos.size(); i++) {%>
                <option value="<%=pueblos.get(i)%>"><%=pueblos.get(i)%></option>       
                <%}%>
            </select>
            <button>Enviar </button>
        </form>
    </body>
</html>
