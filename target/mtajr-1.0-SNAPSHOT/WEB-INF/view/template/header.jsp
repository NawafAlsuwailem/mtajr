<%--
  Created by IntelliJ IDEA.
  User: nawafalsuwailem
  Date: 02/05/2020
  Time: 7:17 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false"%>

<html dir="rtl" lang="ar">
<head>
    <%@ page contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-6" language="java" %>
    <title>MTAJR</title>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
    <script src="${pageContext.request.contextPath}/resources/js/myscripts.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href='https://fonts.googleapis.com/css?family=Aref Ruqaa' rel='stylesheet'>
    <link rel="icon" href="${pageContext.request.contextPath}/resources/images/logo-white.png">
</head>
<style>
    body {
        font-family: 'Aref Ruqaa';font-size: 22px;
    }
</style>

<body>
<div class="row header">

    <div class="col-lg-11 col-xs-9">

        <div class="topnav" id="myTopnav">
            <a href="${pageContext.request.contextPath}/" >«‰’·Õ… «‰—∆Í”Í…</a>
            <a href="#news" >ÂÕ«Â’ «‰‚ÁË… Ë«œË« Á«</a>
            <a href="#contact" >Â «Ã—  ÃÂÍŸ «‰‚ÁË… Ë«œË« Á«</a>

            <c:if test="${not empty pageContext.request.userPrincipal}">
                <if:out value="${param.logout}" >
                    <a href="${pageContext.request.contextPath}/admin/list" class="active">‚«∆Â… «‰Â «Ã—</a>
                    <a id="admin-option" href="${pageContext.request.contextPath}/admin/logout"> ”ÃÍ‰ Œ—ËÃ</a>
                </if:out>
            </c:if>
            <c:if test="${ empty pageContext.request.userPrincipal}">
                <a id="admin-option" href="${pageContext.request.contextPath}/admin/login" >Â‘—·</a>
            </c:if>


            <a href="javascript:void(0);" class="icon" onclick="myFunction()">
                <i class="fa fa-bars" style="float: left"></i>
            </a>
        </div>
    </div>
    <div class="col-lg-1 col-xs-3" style="float: right">
        <div class="logo-div">
            <img class="logo-img" src="${pageContext.request.contextPath}/resources/images/logo-black.png" alt="Logo">
            <h4 style="color: black">Â «Ã—</h4>
        </div>
    </div>
</div>

<div class="container">