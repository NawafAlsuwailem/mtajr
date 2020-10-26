<jsp:include page="../template/header.jsp" />
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-6" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>--%>

<div id="content">
    <h2>����� �������</h2>
    <a href="${pageContext.request.contextPath}/admin/add">����� ����</a>
    <table class="mytable">
        <thead>
        <tr>
            <th>������� ��������</th>
            <th>�����</th>
            <th>�����</th>
            <th>��������</th>
        </tr>
        </thead>

        <tbody>
        <c:forEach var="tempStore" items="${stores}">
            <c:url var="updateLink" value="/admin/update">
                <c:param name="id" value="${tempStore.id}"/>
            </c:url>
            <c:url var="deleteLink" value="/admin/delete">
                <c:param name="id" value="${tempStore.id}"/>
            </c:url>
            <c:url var="loadImage" value="/admin/loadImage">
                <c:param name="id" value="${tempStore.id}"/>
            </c:url>

            <tr>
                <td><img src="${loadImage}" style="width: 30px; height: 30px; align-content: center"/></td>
                <td>${tempStore.name}</td>
                <c:if test="${tempStore.type == 'tools'}">
                    <td>����� ����� ������ ��������</td>
                </c:if>
                <c:if test="${tempStore.type == 'roaster'}">
                    <td>����� ������ ��������</td>
                </c:if>
                <td><a class="edit_link" href="${updateLink}">�����</a>
                    <a href="${deleteLink}"
                       onclick="if (!(confirm('���Ͽ'))) return false">���</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<jsp:include page="../template/footer.jsp" />


