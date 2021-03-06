<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.time.LocalDate" %>
<jsp:include page="/WEB-INF/paginas/comunes/encabezado.jsp"/>
<jsp:include page="/WEB-INF/paginas/fabrica/menu.jsp"/>

<div class="container col-md-4 my-5">
    <h3 class="contenedor">ENSAMBLE</h3>
    <table class="table">
        <tbody>
            <c:forEach var="recetas" items="${recetas}">
                <tr><th>${recetas.nombre.toUpperCase()}</th></tr>
                <tr>
                    <td>Este mueble tiene un precio de venta de ${recetas.precio} y para ensamblarlo se necesita:</td>
                </tr>
                <c:forEach var="requerimientos" items="${recetas.requerimientos}">
                    <tr>
                        <td>${requerimientos.cantidadPieza}  ${requerimientos.nombrePieza}</td>
                    </tr>
                </c:forEach>
                <tr>
                    <td>
                        <form action="${pageContext.request.contextPath}/ServletControlador?accionFabrica=ensamblarMueble&idMuebleEnsamblar=${recetas.nombre.toUpperCase()}&usuario=${nombreUsuario}" method="POST">
                            <input type="date" name="fechaEnsamble" value="${LocalDate.now().toString()}"/>
                            <input type="submit" value="Ensamblar"/>  
                        </form>
                    </td>
                </tr>
                <tr><td><br></td></tr>
                <tr><td><br></td></tr>
                    </c:forEach>
        </tbody>
    </table>
</div>

<jsp:include page="/WEB-INF/paginas/comunes/errores.jsp"/>
<jsp:include page="/WEB-INF/paginas/comunes/pieDePagina.jsp"/>
