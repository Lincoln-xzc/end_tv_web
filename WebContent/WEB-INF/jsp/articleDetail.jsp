<%@ page pageEncoding="UTF-8"%>
<%@ include file="base.jsp" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="UTF-8" />
    <title>${article.title }</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, user-scalable=no" />
    <meta name="format-detection" content="telephone=no"/>
    <link rel="stylesheet" href="${basePath }/static/css/basic.css">
    <link rel="stylesheet" href="${basePath }/static/css/public.css">
</head>
<body class="center">
<article class="wp100 wp100_ pdLR15">
	<c:if test="${empty article }">
		<h1 class="ftS22 txtC clEDA034 fw100">文章不存在</h1>
	</c:if>
    <h1 class="ftS22 txtC clEDA034 fw100">${article.title }</h1>
    <div class="boxText">
        ${article.detail }
    </div>
</article>

<script src="${basePath }/static/js/basic.js" ></script>
<script src="${basePath }/static/js/script.js" ></script>
</body>
</html>
