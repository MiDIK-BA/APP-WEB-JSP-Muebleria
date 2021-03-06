<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/paginas/comunes/encabezado.jsp"/>
<jsp:include page="/WEB-INF/paginas/venta/menu.jsp"/>

<div class="container my-5">
    <h1> COMPRAS DE CLIENTES </h1>

    <form action="${pageContext.request.contextPath}/ServletControlador?accionVentas=comprasClientes" method="POST">
        <label>Nit</label>
        <input type="text" name="nitCliente" value="${nitCliente}"/>
        <label>Fecha inicial</label>
        <input type="date" name="fechaInicial" value="${fechaInicial}"/>
        <label>Fecha final</label>
        <input type="date" name="fechaFinal" value="${fechaFinal}"/>
        <input type="submit"  value="Mostrar"/>
    </form>

        <br>
    <table class="table">
        <thead class="table-dark">
            <tr>
                <th>Fecha</th>
                <th>Nombre del cliente </th>
                <th># Factura</th>
                <th>Id. Producto </th>
                <th>Producto</th>
                <th>Precio</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="facturas" items="${facturas}">
                <c:forEach var="detalles" items="${facturas.detalles}">
                    <tr>
                        <td>${facturas.fecha}</td>
                        <td>${facturas.nombreCliente}</td>
                        <td>${facturas.numFactura}</td>
                        <td>${detalles.idEnsamble}</td>
                        <td>${detalles.nombreProducto}</td>
                        <td>${detalles.precio}</td>
                    </tr>
                </c:forEach>
            </c:forEach>
                    <tr><td colspan="5"><b>Total</b></td><td><b>${total}</b></td></tr>
        </tbody>
    </table>
</div>



<jsp:include page="/WEB-INF/paginas/comunes/pieDePagina.jsp"/>