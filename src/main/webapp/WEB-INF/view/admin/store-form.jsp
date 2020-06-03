<jsp:include page="../template/header.jsp" />
<jsp:include page="../template/admin-header.jsp" />
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-6" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<div class="add-store-div">
    <h3>����� ����</h3>
    <form:form action="saveStore" modelAttribute="store" method="post" enctype="multipart/form-data">
        <form:hidden path="id"/>
        <table>
            <td>
                <tr>
                    <td><label>�����</label></td>
                    <td>
                        <form:select path="type">
                            <form:option value="tools">���� ����� ������ ��������</form:option>
                            <form:option value="roaster">����� ������ ��������</form:option>
                        </form:select>
                            <%--                        <input type="radio" id="male" name="gender" value="male">--%>
                            <%--                        <label for="male">Male</label>--%>
                            <%--                        <input type="radio" id="female" name="gender" value="female">--%>
                            <%--                        <label for="female">Female</label><br>--%>
                    </td>
                </tr>
                <tr>
                    <td><label>�����</label></td>
                    <td><form:input path="name"/></td>
                </tr>
                <tr>
                    <td><label>����� ����������</label></td>
                    <td><form:input path="name_eng"/></td>
                </tr>
                <tr>
                    <td><label>������</label></td>
                    <td><form:input path="url"/></td>
                </tr>

                <tr>
                    <td><label>������� ��������</label></td>
                    <td><input type="file" name="file" id="file"/></td>
                </tr>
                <tr>
                    <td><input type="submit" value="���" class="save" /></td>
                </tr>
            </td>
        </table>
    </form:form>
    <div style="clear: both"></div>
    <p>
        <a href="${pageContext.request.contextPath}/admin/list">������ ��� �������</a>
    </p>
</div>

<jsp:include page="../template/footer.jsp" />


