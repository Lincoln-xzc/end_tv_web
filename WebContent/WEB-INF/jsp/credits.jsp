<%@ page pageEncoding="UTF-8"%>
<%@ include file="base.jsp" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="UTF-8" />
    <title>积分说明</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, user-scalable=no" />
    <meta name="format-detection" content="telephone=no"/>
    <link rel="stylesheet" href="${basePath }/static/css/basic.css">
    <link rel="stylesheet" href="${basePath }/static/css/public.css">
</head>
<body class="center bg14">
<section class="wp100">
    <div class="wp100 bg19 mgT20 home_mod">
        <span class="w120 cl15 lh40 ftS18 pdL15 white_ico mgT15">积分说明</span>
        <div class="wp100 wp100_ pd15">
            <p class="cl9">
                1、用户关注数上限为2000，其包括家庭和个人关注。<br/>
                2、积分值同步累计到魅力值与财富值。每日魅力值无上限。<br/>
                3、每日互动奖励累计财富值上限为2000分值。相当于抵用20元，一次性奖励积分值不计入财富值上限范围。<br/>
            </p> 
            <span class="cl3">扣分规则：</span>
            <p class="cl9 txt_idt"> 
                日常活动积分，如果该动作被取消(删除评价、取消点赞)则对应该用户产生的积分值都会消除掉，财富值最多被扣到0。
            </p>
        </div>
   
    </div>    
</section>

<script src="${basePath }/static/js/basic.js" ></script>
<script src="${basePath }/static/js/script.js" ></script>
</body>
</html>