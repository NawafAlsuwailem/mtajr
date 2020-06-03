<jsp:include page="../template/header.jsp" />
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-6" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="login-div">
    <h3>����� ����</h3>
    <hr style="border: 0.5px solid black; padding: 0">
    <div class="login-form">
        <form:form action="${pageContext.request.contextPath}/admin/authenticateTheUser" method="post">
            <c:if test="${param.error != null}">
                <i>��� �������� �� ���� ������ �����</i>
            </c:if>
            <input type="text" name="username" placeholder=" ��� ��������">
            <br>
            <input type="password" name="password" placeholder="���� ������">
            <input type="submit" value="����" style="align-content: center; align-self: center;">
        </form:form>
    </div>
</div>


<jsp:include page="../template/footer.jsp" />
