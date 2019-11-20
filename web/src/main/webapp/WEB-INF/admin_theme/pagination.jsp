<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<nav class="row">
    <ul class="pagination pg-blue justify-content-center">
        <li class="page-item">
            <a class="page-link" aria-label="Previous">
                <span aria-hidden="true">&laquo;</span>
                <span class="sr-only">Previous</span>
            </a>
        </li>
<%--        <li class="page-item"><a class="page-link">1</a></li>
        <li class="page-item active"><a class="page-link">2</a></li>
        <li class="page-item"><a class="page-link">3</a></li>--%>
        <% request.setAttribute("noOfPage",3);%>
        <c:forEach begin="1" end="${noOfPage}" var="i">
            <li class="page-item"><a class="page-link">i</a></li>
        </c:forEach>
        <li class="page-item">
            <a class="page-link" aria-label="Next">
                <span aria-hidden="true">&raquo;</span>
                <span class="sr-only">Next</span>
            </a>
        </li>
    </ul>
</nav>