<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="top-navbar">
    <c:if test="${sessionScope.user == null}">
        <p>WELCOME TO ORANGE SHOP</p>
    </c:if>
    <c:if test="${sessionScope.user != null}">
        <p>Welcome to ${sessionScope.user.fullName}</p>
    </c:if>
    <div class="icons">
        <c:if test="${sessionScope.user == null}">
            <a href="${pageContext.request.contextPath}/auth?action=login" class="material-symbols-outlined">person</a>
        </c:if>
        <c:if test="${sessionScope.user != null}">
            <a href="${pageContext.request.contextPath}/auth?action=logout" class="material-symbols-outlined">logout</a>
        </c:if>
    </div>
</div>
<nav class="navbar navbar-expand-lg" id="navbar">
    <div class="container-fluid">
        <a class="navbar-brand" href="i-store" id="logo"><svg xmlns="http://www.w3.org/2000/svg" height="48px" viewBox="0 -960 960 960" width="48px" fill="#black"><path d="M480-120q-117 0-198.5-81.5T200-400q0-100 61.5-176.5T420-674q-26-5-50-14.5T327-717q-28-29-37.5-67t-9.5-78v-18q86-2 148 56.5T489-680q14-43 39.5-80t57.5-69q9-9 21-9t21 9q9 9 9 21t-9 21q-25 25-45 54t-34 61q94 24 152.5 99.5T760-400q0 117-81.5 198.5T480-120Zm0-60q92 0 156-64t64-156q0-92-64-156t-156-64q-92 0-156 64t-64 156q0 92 64 156t156 64Zm0-220Z"/></svg>
            </span><span>ORANGE SHOP</span></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span><img id="tag_menu" src="https://firebasestorage.googleapis.com/v0/b/case-3c600.appspot.com/o/menu.png?alt=media&token=cd32e243-04a1-4299-a044-ee2a11f9fdf5" alt="" width="30px"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="i-store">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="i-store?action=product">Product</a>
                </li>
                <c:if test="${sessionScope.user.isAdmin == 0}">
                    <li class="nav-item">
                        <a class="nav-link" href="${pageContext.request.contextPath}/i-store?action=cart"><span class="material-symbols-outlined">shopping_bag</span></a>
                    </li>
                </c:if>

                <c:if test="${sessionScope.user.isAdmin == 1}">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Category Manager</a>
                    </li>
                </c:if>
                <c:if test="${sessionScope.user.isAdmin == 1}">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Product Manager</a>
                    </li>
                </c:if>
                <c:if test="${sessionScope.user.isAdmin == 1}">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Order Manager</a>
                    </li>
                </c:if>
                <c:if test="${sessionScope.user.isAdmin == 1}">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Customer Manager</a>
                    </li>
                </c:if>
            </ul>
            <form class="d-flex" action="i-store?action=search" method="post">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" name="search">
                <button class="btn btn-outline-dark" type="submit">Search</button>
            </form>
        </div>
    </div>
</nav>
