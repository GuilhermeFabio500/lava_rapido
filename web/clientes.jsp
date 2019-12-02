<%-- 
    Document   : clientes
    Created on : 01/12/2019, 22:08:42
    Author     : elois
--%>

<%@page import="br.com.fatecpg.lava_rapido.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clientes</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <table border ="1">
            <tr>
                <th>Nome</th>
                <th>CPF</th>
            </tr>
            <% try{ %>
                <%for (Cliente c: Cliente.getList()) { %>
                <tr>
                    <%String nome = c.getNome(); %>
                    <td><a><%= c.getNome() %></a></td>
                    <td><%= c.getCPF() %></td>
                </tr>
                <% } %>
                <%} catch(Exception e) {%>
                <tr><td colspan="3"> Erro: <%= e.getMessage() %> </td></tr>
                <% } %>
        </table>
    </body>
</html>
