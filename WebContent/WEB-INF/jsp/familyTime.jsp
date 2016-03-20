<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="base.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>家庭首页</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, user-scalable=no" />
	<script type="text/javascript" src="${basePath}/static/js/jquery/jquery-1.7.2.min.js"></script>
    <link rel="stylesheet" href="${basePath }/static/css/basic.css">
    <link rel="stylesheet" href="${basePath }/static/css/public.css">
</head>
<body class="center bg14">
<header class="wp100 orange-gdt txtC">
    <div class="psA lp50 t20 w100 h100 rdp100 bdFBCAA2_4 ofHD mgL-50">
        <img src="${homeIndex.data.icon}" class="w100 h100" onerror="javascript:this.src='${basePath }/static/images/_user.png'">
    </div>
    <span class="wp100 txtC ftS20 cl19 mgT125">${homeIndex.data.nick_name}</span>
    <span class="wp100 txtC ftS18 cl19 mgT5">${homeIndex.data.slogan}</span>
    <div class="wp100 txtC ftS18 cl19 mgT5">
        <img src="${basePath }/static/images/home_pin.png" class="w15 flN t-2 mgR5">${homeIndex.data.province_name}-${homeIndex.data.city_name}  &nbsp;&nbsp;&nbsp;
        <img src="${basePath }/static/images/home_time.png" class="w20 flN t-2 mgR5">${homeIndex.data.wedding_count}天
    </div>
    <ul class="wp100 m_col3_ bgF1B85F cl19 lsN mgT10 ftS18 pdTB10_">
        <li class="lh23">
            Lv${homeIndex.data.charm_level}<br/>${homeIndex.data.charm_name} <i class="psA r0 t20 w5 h30 bdRfff"></i>
        </li>
        <li class="lh23">
        	<c:if test="${empty homeIndex.data.concern_num}">0</c:if>
            ${homeIndex.data.concern_num}<br/>关注 <i class="psA r0 t20 w5 h30 bdRfff"></i>
        </li>
        <li class="lh23">
        	<c:if test="${empty homeIndex.data.fans_num}">0</c:if>
            ${homeIndex.data.fans_num}<br/>粉丝
        </li>
    </ul>
</header>
<section class="wp100">
    <div class="wp100 lh50 bdBeee csPT_ bg19">
        <span class="m_wp35 txtC clEDA034 ftS18 bdBEDA034 mgLP10 home_tab">家庭时光</span>
        <span class="m_wp35 txtC ftS18 mgLP10 home_tab" >家庭资料</span>
    </div>
    <div class="wp100 home_mod">
        <div class="wp100 pdTB15 ftS16 bdBeee bg19">
            <img src="${basePath }/static/images/home_bq.png" class="psA t17 l15 w25">
            <div class="wp100 pdL30 pdR20 cl6_">
            	<a href="#" class="mgL20 clEDA034">全部</a>
            	<c:forEach var="tag" items="${tagMap.data}" varStatus="tagVs">
            	<a href="#" class="mgL20">${tag.name}</a>
            	</c:forEach>
            </div>
        </div>
        <div class="wp100 lh40 pdLR15 ftS16 bdBeee clEDA034 bg19">
            最新动态 <!-- <span class="flR cl6">1条</span> -->
        </div>
        
        <c:forEach var="dynamic" items="${homeDynamic.data}" varStatus="vs">
        <div class="wp100 minH300 bg19 mgB20">
            <div class="psA t15 l15 w60 txtC">
                <div class="w50 h50 rdp100 bdEDA034 ofHD pd2 mgL5">
                    <img src="${dynamic.avatar_url}" class="whp100 rdp100" onerror="javascript:this.src='${basePath }/static/images/_user.png'">
                </div>
                <span class="w30 h60 bdREDA034 mgT5"></span>
                <fmt:parseDate value="${dynamic.record_date}" var="record_date"></fmt:parseDate>
                <span class="wp100 ftS20 txtL pdL5">
                	<fmt:formatDate value="${record_date}" type="both" pattern="d"/><em class="ftS12 ftSNM flN mgL2"><fmt:formatDate value="${record_date}" type="both" pattern="M"/>月</em>
                </span>
                <span class="wp100 txtC ftS18 clEDA034 mgT-5"><fmt:formatDate value="${record_date}" type="both" pattern="EEEE"/></span>
                <span class="w30 h60 bdREDA034"></span>
                <div class="wp100 ">
                    <img src="${basePath }/static/images/tz_2pin.png" class="w15 flN">
                    <span class="wp100 ftS16 cl9">${dynamic.adname}</span>
                </div>
            </div>
            <div class="wp100 wp100_ pdL90 pdR10" >
                <div class="mgT20">
                    <span class="wp100 ftS22 pdR80">${dynamic.name}</span>
                    <span class="psA r0 t5 clB37CDA"><img src="${basePath }/static/images/home_rl.png" class="w20 mgR10">${dynamic.family_count}天</span>
                </div>
                <span class="ftS16 cl6 mgT5"  onclick="viewDetail(${dynamic.id});"  style="cursor: pointer;">${dynamic.text}</span>
                <div class="m_col3_ pdR5_ mgT10"  onclick="viewDetail(${dynamic.id});"  style="cursor: pointer;">
                	<c:forEach var="img" items="${dynamic.image}" varStatus="imgVs">
                    	<div><img src="${img}" class="wp100"></div>
                    </c:forEach>
                </div>
                <div class="bdBeee cl9">
                    <div class="flR lh50_">
                        <div class="mgR15"><img src="${basePath }/static/images/tz_xx.png" class="w20 t15 mgR5">${dynamic.comment_num }</div>
                        <div class="mgR15"><img src="${basePath }/static/images/tz_zz.png" class="w20 t15 mgR5">${dynamic.praise_num }</div>
                        <div><img src="${basePath }/static/images/tz_zf.png" class="w20 t15 mgR5">${dynamic.forward_num }</div>
                    </div>
                </div>
                <c:if test="${dynamic.comment_num>0  }">
                <c:if test="${dynamic.comment_num>2  }">
                <span class="lh40 cl6"  onclick="viewDetail(${dynamic.id});" style="cursor: pointer;">查看所有${dynamic.comment_num}条评论</span>
                </c:if>
                <ul class="wp100_ lsN minH40_">
                	<c:forEach var="comment" items="${dynamic.comment}" varStatus="commentVs">
                    <li>
                        <img src="${comment.user_avatar}" class="psA t0 l0 w30 h30 rdp100">
                        <div class="wp100 pdL40 cl9 mgT5">
                            <span class="cl3">${comment.user_name}：</span>${comment.content} 	 	
                        </div>
                    </li> 
                    </c:forEach>                 
                </ul>
                </c:if>
            </div>
        </div>
        </c:forEach> 
              
    </div>
    
    <input type="hidden" value="${homeId}" id="homeId"/>
    <input type="hidden" value="${basePath}" id="basePath"/>
    <input type="hidden" value="true" id="load_flag"/>
    <div class="wp100 hide home_mod" id="home_data">
        <ul class="wp100 m_wp25_ mgB20 bg19 txtC_ lsN pdL15_ pdR15 pdTB15" id="members">
            <li>
                <div class="wp100 wp100_">
                    <div>
                        <img src="${basePath }/static/images/user.png" class="wp100 rdp100">
                        <div class="w50 cl19 mgT-20 lp50 mgL-25"> 
                            <img src="${basePath }/static/images/mldj_zs.png" class="psA t0 l0 wp100">
                            <span class="wp100 txtR zid1 ftS12 t7 r3">Lv10</span>
                        </div>
                    </div>
                    <span class="txtC mgT10">四海夕阳</span>
                </div>
            </li>
            <li>
                <div class="wp100 wp100_">
                    <div>
                        <img src="images/user.png" class="wp100 rdp100">
                        <div class="w50 cl19 mgT-20 lp50 mgL-25"> 
                            <img src="images/mldj_hsz.png" class="psA t0 l0 wp100">
                            <span class="wp100 txtR zid1 ftS12 t7 r3">Lv23</span>
                        </div>
                    </div>
                    <span class="txtC mgT10">维多利亚</span>
                </div>
            </li>
            <li>
                <div class="wp100 wp100_">
                    <div>
                        <img src="images/user.png" class="wp100 rdp100">
                        <div class="w50 cl19 mgT-20 lp50 mgL-25"> 
                            <img src="images/mldj_hs.png" class="psA t0 l0 wp100">
                            <span class="wp100 txtR zid1 ftS12 t7 r3">Lv31</span>
                        </div>
                    </div>
                    <span class="txtC mgT10">四海夕阳</span>
                </div>
            </li>
            <li>
                <div class="wp100 wp100_">
                    <div>
                        <img src="images/user.png" class="wp100 rdp100">
                        <div class="w50 cl19 mgT-20 lp50 mgL-25"> 
                            <img src="images/mldj_ls.png" class="psA t0 l0 wp100">
                            <span class="wp100 txtR zid1 ftS12 t7 r3">Lv12</span>
                        </div>
                    </div>
                    <span class="txtC mgT10">四海夕阳</span>
                </div>
            </li>
        </ul>
        <div class="wp100 wp100_ lh40_ bg19_ mgB20">
            <div class="bdBeee ftS16">
                <span class="psA t0 l0 w120 pdL15 cl9">家庭门牌号</span>
                <span class="wp100 h40 pdL130 pdR15 ofHD" id="homeNum">20150804</span>
            </div>
            <div class="bdBeee ftS16">
                <span class="psA t0 l0 w120 pdL15 cl9">家庭签名</span>
                <span class="wp100 h40 pdL130 pdR15 cl9 ofHD" id="slogan">写一写专属你们家庭的话吧</span>
            </div> 
            <div class="bdBeee ftS16">
                <span class="psA t0 l0 w120 pdL15 cl9">家庭称号</span>
                <span class="wp100 h40 pdL130 pdR15 ofHD" id="charm_name">九品轩</span>
            </div> 
            <div class="bdBeee ftS16">
                <span class="psA t0 l0 w120 pdL15 cl9">魅力等级</span>
                <span class="wp100 pdL130 pdR15"  id="charm_level"><img src="${basePath }/static/images/hg.png" class="w22 t10 r5">Lv23</span>
            </div> 
            <div class="bdBeee ftS16">
                <span class="psA t0 l0 w120 pdL15 cl9">魅力值</span>
                <span class="wp100 pdL130 pdR15"  id="charm_num"><img src="${basePath }/static/images/ax2.png" class="w22 t10 r5">4345</span>
            </div> 
            <div class="bdBeee ftS16">
                <span class="psA t0 l0 w120 pdL15 cl9">财富值</span>
                <span class="wp100 pdL130 pdR15"  id="wealth_num"><img src="${basePath }/static/images/hg3.png" class="w22 t10 r5">2340</span>
            </div>
            <div class="bdBeee ftS16">
                <span class="psA t0 l0 w120 pdL15 cl9">所在地区</span>
                <span class="wp100 h40 pdL130 pdR15 cl9 ofHD" id="adname">请填写现在所在地区</span>
            </div>
            <div class="bdBeee ftS16 mgTB10">
                <span class="psA t0 l0 w120 pdL15 cl9">家庭兴趣标签</span>
                <span class="wp100 h40 pdL130 pdR30 cl9 ofHD" id="interest">
                    添加你们感兴趣的标签吧
                    <i class="a_right"></i>
                </span>
            </div>
             
            <div class="bdBeee ftS16">
                <span class="psA t0 l0 w120 pdL15 cl9">家庭组建时间</span>
                <span class="wp100 h40 pdL130 pdR15 ofHD" id="wedding_day">24521天(5年7个月20天)</span>
            </div>
            <div class="bdBeee ftS16">
                <span class="psA t0 l0 w120 pdL15 cl9">建立微家日期</span>
                <span class="wp100 h40 pdL130 pdR15 ofHD" id="family_day">2015-08-28</span>
            </div>
            <div class="bdBeee ftS16">
                <span class="psA t0 l0 w120 pdL15 cl9">入驻微家时间</span>
                <span class="wp100 h40 pdL130 pdR15 ofHD" id="enter_day_count">12天</span>
            </div>            
        </div>
    </div>    
</section>

<script src="${basePath }/static/js/basic.js" ></script>
<script src="${basePath }/static/js/script.js" ></script>
</body>
</html>

<script type="text/javascript">
function viewDetail(dynamicId){
	//alert("${basePath}/weihome/dynamicDetail/"+dynamicId);
	window.location.href = "${basePath}/weihome/dynamicDetail/"+dynamicId;
}

</script>

