<%--
  Created by IntelliJ IDEA.
  User: nawafalsuwailem
  Date: 09/07/2020
  Time: 3:30 am
  To change this template use File | Settings | File Templates.
--%>
<jsp:include page="../template/header.jsp" />
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-6" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<style>
    .grid-container {
        display: grid;
        grid-template-columns: auto auto auto;
    }
    .grid-item {
        text-align: center;
    }
    @media screen and (max-width: 600px) {
        .grid-container {
            display: grid;
            grid-template-columns: auto ;
        }
    }
</style>

<div class="container">
<h3 style="text-align: center">åÊÇÌÑ ÊÌåêÙ ÇäâçèÉ èÃÏèÇÊçÇ</h3>
<div class="grid-container">
    <c:forEach var="tempStore" items="${tool_stores}">
        <div class="grid-item">
            <c:url var="loadImage" value="/store/loadImage">
                <c:param name="id" value="${tempStore.id}"/>
            </c:url>
            <img src="${loadImage}" style="width:auto;max-width:30%; align-content: center"/>
            <p>
                    ${tempStore.name}
            </p>
        </div>
    </c:forEach>
</div>
</div>
<jsp:include page="../template/footer.jsp" />

