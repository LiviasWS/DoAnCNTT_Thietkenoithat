<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Main Menu</title>
        <link rel="stylesheet" type="text/css" href="css/main-menu.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    </head>
    <body>
        <div class="background">
            <div class="background__flur"></div>
        </div>
        <div class="header">
            <ul class="header__container">
                <li class="header__item header__item--logo">HarmoniHome</li>
            </ul>
            <ul class="header__container header__container--title">
                <li class="header__item header__item--title">Main Menu</li>
                <li class="header__item header__item--title">Services</li>
                <li class="header__item header__item--title">Projects</li>
                <li class="header__item header__item--title">Contact</li>
            </ul>
        </div>
        <div class="background__title">
            <p class="background__title__text">HarmoniHome Interior Services<br>Building your dream home with you</p>
        </div>
        <c:forEach var="collection" items="${collections}">
            <div class="mainContent">
                <div class="mainContent__container"></div>
                <div class="mainContent__image" style="background-image: url('${pageContext.request.contextPath}${collection.image}');"></div>
                <p class="mainContent__title">${collection.title}</p>
                <div class="mainContent__content">
                    <p>${collection.description}</p>
                    <hr>
                </div>
                <button class="mainContent__directionContainer">
                    <p style="margin-top: 10px; margin-left: 10px">Inspiration gallery</p>
                    <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-arrow-right" viewBox="0 0 16 16">
                        <path fill-rule="evenodd" d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8"/>
                    </svg>
                </button>
            </div>
        </c:forEach>
    </body>
</html>
