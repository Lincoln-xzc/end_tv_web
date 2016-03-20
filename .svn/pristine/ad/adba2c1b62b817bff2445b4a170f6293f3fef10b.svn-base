<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="base.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>动态详情</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, user-scalable=no" />
	<script type="text/javascript" src="${basePath}/static/js/jquery/jquery-1.7.2.min.js"></script>
    <link rel="stylesheet" href="${basePath }/static/css/basic.css">
    <link rel="stylesheet" href="${basePath }/static/css/public.css">
</head>
<body class="center bg14">
<section class="wp100">
    <div class="wp100 minH300 bg19 mgT20">
        <div class="psA t15 l15 w60 txtC">
            <div class="w50 h50 rdp100 bdEDA034 ofHD pd2 mgL5">
                <img src="${dynamicMap.photo}" class="whp100 rdp100"  onerror="javascript:this.src='${basePath }/static/images/_user.png'">
            </div>
            <fmt:parseDate value="${dynamicMap.record_date}" var="record_date"></fmt:parseDate>
            <span class="w30 h60 bdREDA034 mgT5"></span>
            <span class="wp100 ftS20 txtL pdL5"><fmt:formatDate value="${record_date}" type="both" pattern="d"/><em class="ftS12 ftSNM flN mgL2"><fmt:formatDate value="${record_date}" type="both" pattern="M"/>月</em></span>
            <span class="wp100 txtC ftS18 clEDA034 mgT-5"><fmt:formatDate value="${record_date}" type="both" pattern="EEEE"/></span>
            <span class="w30 h60 bdREDA034"></span>
            <div class="wp100 ">
                <img src="${basePath }/static/images/tz_2pin.png" class="w15 flN">
                <span class="wp100 ftS16 cl9">${dynamicMap.adname}</span>
            </div>
        </div>
        <div class="wp100 wp100_ pdL90 pdR10">
            <div class="mgT20">
                <span class="ftS22 pdR80">${dynamicMap.name}</span>
                <div class="w50 cl19 mgL10 mgT5"> 
                	<c:choose>
                		<c:when test="${dynamicMap.charm_level<11}">
                			<img src="${basePath }/static/images/fenzuan.png" class="psA t0 l0 wp100">
                		</c:when>
                		<c:when test="${dynamicMap.charm_level<21}">
                			<img src="${basePath }/static/images/huangzuan.png" class="psA t0 l0 wp100">
                		</c:when>
                		<c:when test="${dynamicMap.charm_level<31}">
                			<img src="${basePath }/static/images/chengzuan.png" class="psA t0 l0 wp100">
                		</c:when>
                		<c:otherwise>
                			<img src="${basePath }/static/images/hongzuan.png" class="psA t0 l0 wp100">
                		</c:otherwise>
                	</c:choose>
                    <span class="wp100 txtR zid1 ftS12 t7 r3">Lv${dynamicMap.charm_level}</span>
                </div>
            </div>
            <span class="ftS16 cl6 mgT5">${dynamicMap.content}</span>
            <div class="m_col3_ pdR5_ mgT5_">
            	<c:forEach var="img" items="${dynamicMap.images}" varStatus="imgVs">
            	<div><img src="${img }" class="wp100"></div>
            	</c:forEach>
            </div>
            <div class="cl9">
                <div class="flR lh50_">
                    <div class="mgR15"><img src="${basePath }/static/images/tz_xx.png" class="w20 t15 mgR5">${dynamicMap.comment_num}</div>
                    <div class="mgR15"><img src="${basePath }/static/images/tz_zz.png" class="w20 t15 mgR5">${dynamicMap.praise_num}</div>
                    <div><img src="${basePath }/static/images/tz_zf.png" class="w20 t15 mgR5">${dynamicMap.forward_num}</div>
                </div>
            </div>
        </div>
    </div>
    <div class="wp100 wp100_ bg19 pdLR15 pdB20">
        <c:if test="${not empty praiseMap.data }">
        <div class="pdTB10 bdTBeee">
            <img src="${basePath }/static/images/like2.png" class="psA t17 l0 w25">
            <div class="wp100 pdL30 cl6_ mgL10_ mgB5_">
            	<c:forEach var="praise" items="${praiseMap.data}" varStatus="praiseVs">
            	<img src="${praise.photo }" class="w40 h40 rdp100"  onerror="javascript:this.src='${basePath }/static/images/_user.png'">
            	</c:forEach>
            </div>
        </div>
        </c:if>
        <ul class="wp100_ lsN minH40_ mgT5 mgT5_">
        	<c:forEach var="comment" items="${commentMap.data}" varStatus="commentVs">
            <li>
                <img src="${comment.comment_user.avatar_url }" class="psA t0 l0 w30 h30 rdp100"  onerror="javascript:this.src='${basePath }/static/images/_user.png'">
                <div class="wp100 pdL40 cl9">
                	<fmt:parseDate value="${comment.comment_time}" var="comment_time"></fmt:parseDate>
                    <span class="cl3 mgR10">${comment.comment_user.name }</span>${fn:substring(comment.comment_time, 5, 16) }
                </div>
                <div class="wp100 pdL40 cl9">
                    ${comment.content }
                </div>                    
            </li>
            </c:forEach>             
        </ul>
    </div>
</section>

<script src="${basePath }/static/js/basic.js" ></script>
<script src="${basePath }/static/js/script.js" ></script>
</body>
</html>