<%--
  Created by IntelliJ IDEA.
  User: pritom
  Date: 6/12/12
  Time: 1:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/jmesa" prefix="jmesa" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head><title>Simple jsp page</title></head>
<body>
<div class="post">
    <div class="title">Try out these titles!<%--${game.gameName} khelechen ?--%>
    </div>

    <form name="RecommendedGamesForm">


        <jmesa:tableModel id="tag" items="${recommendedGames}" var="game">

            <c:url value="/Game.htm" var="displayURL">
                <c:param name="gameId" value="${game.gameId}"/>
            </c:url>

            <jmesa:htmlTable width="800px" styleClass="jmesa" cellpadding="15px" cellspacing="5px">
                <jmesa:htmlRow>
                    <jmesa:htmlColumn property="gameName">
                        <a href="${displayURL}">${game.gameName}</a>
                    </jmesa:htmlColumn>

                    <jmesa:htmlColumn property="developer"/>
                    <jmesa:htmlColumn property="platform"/>
                    <jmesa:htmlColumn property="genreString" title="Genre(s)"/>
                    <jmesa:htmlColumn title="Rating">
                        <%--${(game.ratingPresentation+game.ratingGraphics+game.ratingGamePlay+game.ratingSound+game.ratingLongevity)/5}--%>
                        ${game.ratingOverall}
                    </jmesa:htmlColumn>
                </jmesa:htmlRow>
            </jmesa:htmlTable>
        </jmesa:tableModel>
    </form>
</div>
</body>
</html>