<jsp:include page="../template/header.jsp" />
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-6" %>

<div class="index-div">
    <a href="${pageContext.request.contextPath}/store/roasters"  style="text-decoration: none;">
        <div class="roasters-div">
            <h3>еЌ«е’ «двзи… и«ѕи« з«</h3>
            <img src="${pageContext.request.contextPath}/resources/images/roaster.jpg" alt="roasters"/>
        </div>
    </a>

    <div class="store-div">
        <a href="${pageContext.request.contextPath}/store/tools"  style="text-decoration: none;">
        <h3>е «ћ—  ћекў «двзи… и«ѕи« з«</h3>
        <img src="${pageContext.request.contextPath}/resources/images/store.jpg" alt="tools"/>
        </a>
    </div>
</div>

<jsp:include page="../template/footer.jsp" />