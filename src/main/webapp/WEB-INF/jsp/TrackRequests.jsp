<%--
  Created by IntelliJ IDEA.
  User: tahmid
  Date: 6/13/12
  Time: 4:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head><title>Simple jsp page</title></head>
<body>
<div class="post">
    <div class="title">The following users have sent you a track request<%--${game.gameName} khelechen ?--%>
    </div>

    <div class="entry">

        <c:forEach items="${requestingUsers}" var="user">
            <form:form name="RequestListForm" commandName="processRequest">
                <c:url value="/User.htm" var="displayURL">
                    <c:param name="userId" value="${user.userId}"/>
                </c:url>

                <table>
                    <tr>
                        <td>
                            <form:checkbox path="processedRequestingUsers" label="" value="${user.userId}"/>
                            <a href="${displayURL}">${user.userName}</a>
                        </td>
                        <td width="50%"></td>

                        <td>
                            <input type="submit" value="Approve" name="approve" class="nicebutton">
                        </td>
                        <td>
                            <input type="submit" value="Reject" name="reject" class="nicebutton">
                        </td>
                    </tr>
                </table>
            </form:form>
        </c:forEach>
        <%-- <form:checkboxes path="processedRequestingUsers" items="${requestingUsers}" delimiter="<br>"/>--%>
        <br>
        <br>
        <%--<table>
            <tr>
                <td width="50%"></td>
                <td width="50%"></td>
                <td width="50%">

                </td>
            </tr>
        </table>--%>


    </div>
</div>
</body>
</html>