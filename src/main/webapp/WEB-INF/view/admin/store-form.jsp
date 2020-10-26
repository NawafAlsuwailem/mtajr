<jsp:include page="../template/header.jsp" />
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-6" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<div class="add-store-div">
    <h3>«÷«·… Â Ã—</h3>
    <form:form action="saveStore" modelAttribute="store" method="post" enctype="multipart/form-data">
        <form:hidden path="id"/>
        <table>
            <td>
                <tr>
                    <td><label>«‰ÊËŸ</label></td>
                    <td>
                        <form:select required="required" path="type">
                            <form:option value="tools">Â Ã—  ÃÂÍŸ «‰‚ÁË… Ë√œË« Á«</form:option>
                            <form:option value="roaster">ÂÕ«Â’ «‰‚ÁË… Ë√œË« Á«</form:option>
                        </form:select>
                    </td>
                </tr>
                <tr>
                    <td><label>«‰√”Â</label></td>
                    <td><form:input required="required" path="name"/></td>
                </tr>
                <tr>
                    <td><label>«‰√”Â »«‰«ÊÕ‰Í“Í</label></td>
                    <td><form:input path="name_eng"/></td>
                </tr>
                <tr>
                    <td><label>«‰—«»◊</label></td>
                    <td><form:input required="required" path="url"/></td>
                </tr>

                <tr>
                    <td><label>«‰Ÿ‰«Â… «‰ Ã«—Í…</label></td>
                    <td><input type="file" name="file" id="file" required/></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Õ·ÿ" class="save" /></td>
                </tr>
            </td>
        </table>
    </form:form>
    <div style="clear: both"></div>
    <p>
        <a href="${pageContext.request.contextPath}/admin/list">«‰ŸËœ… «‰È «‰‚«∆Â…</a>
    </p>
</div>

<jsp:include page="../template/footer.jsp" />


