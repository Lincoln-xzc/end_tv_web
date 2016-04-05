<%@ page pageEncoding="UTF-8"%>
<%@ include file="../base.jsp" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="UTF-8" />
    <title>首页</title>
    <link rel="stylesheet" href="${basePath }/static/css/basic.css">
    <link rel="stylesheet" href="${basePath }/static/css/public.css">
    <script type="text/javascript" src="${basePath }/static/js/jquery/jquery-1.8.2.min.js"></script>
</head>
<body class="bgImg">
<div class="wp100 mgT50">
    <div class="w200 txtC mgL70">
        <img src="${basePath }/static/images/logo.png" class="flN"><span class="wp100 ftS22 clD4D4D2 txtC">微家秀秀PC版</span>
    </div>
</div>
<div class="w450 center mgT200">
    <div class="wp100 bg19 rd5 pd20 pdB70" id="scanDiv">
        <div class="w270 wp100_ mgT60 mgL70">
            <img src="${basePath }/qcode/${uuid}">
            <span class="txtC ftS20 mgT20">扫描二维码登录微信</span>
            <div class="mgT40">
                <img src="${basePath }/static/images/mobile.png" class="mgT7"> 
                <div class="w200 wp100_ mgL15 ftS16">
                    <span>登录手机微家秀秀</span>
                    <span>手机上 <a href="#" class="clFE9601 flN">安装微家秀秀</a> </span>
                </div>   
            </div>
            <div class="mgT30">
                <img src="${basePath }/static/images/fingerprint.png" class=""> 
                <div class="w200 wp100_ mgL15 mgT5 ftS16">
                   进入"我的"点击pc助手
                </div>   
            </div>            
        </div>
    </div>
    <div class="wp100 bg19 rd5 pd20 pdB70 hide" id="successDiv">
        <div class="w270 wp100_ mgT60 mgL70 txtC">
            <img src="${basePath }/static/images/user.png" id="userPhoto" 
            	class="w120 h120 rd5 flN" onerror="this.src='${basePath }/static/images/_user.png'">
            <span class="mgT40" id="nickname"></span>
            <span class="txtC ftS22 mgT120">扫描成功</span>
            <span class="txtC ftS16 mgT40">请在手机上点击确认以登录</span>
            <a href="#" id="retuBack" class="txtC ftS16 mgT40 cl469BEC">返回</a>
        </div>
    </div>
</div>
<div class="wp100 h200"></div>
<script type="text/javascript">
$(function(){
	$("#retuBack").click(function(){
		window.location.reload(false);
		return false;
	});
	var count = 0;
	var check = false;
	var initPush = function () {
        var pollingUrl = "${basePath}/polling/${uuid}";
        var longPolling = function(url, callback) {
            $.ajax({
                url: url,
                async: true,
                cache: false,
                global: false,
                timeout: 70 * 1000,
                dataType : "json",
                success: function (data, status, request) {
                    var pass=true;
                    
                    if(data && data.uuid)
                    	pass=false;
                    callback(data);
                    data = null;
                    status = null;
                    request = null;
                    if(pass)
	                    setTimeout(
	                        function () {
	                            longPolling(url, callback);
	                        },
	                        75
	                    );
                    else
                    	window.location.reload(false);
                },
                error: function (xmlHR, textStatus, errorThrown) {
                    xmlHR = null;
                    textStatus = null;
                    errorThrown = null;

                    setTimeout(
                        function () {
                            longPolling(url, callback);
                        },
                        1000
                    );
                }
            });
        };
        longPolling(pollingUrl, function(data) {
            if(data && data.success && data.bind) {
                $("#userPhoto").attr("src",data.result.photo);
                $("#nickname").text(data.result.nickname);
                $("#scanDiv").hide();
                $("#successDiv").show();
                check = true;
            }else if(check && data && data.success && data.login){
            	$.ajax({
            		url:'${basePath}/pc/saveLogin/${uuid}/'+data.result.token,
            		type:'post',
            		dataType:'json',
            		success: function(data){
            			if(!data || !data.success)
            				window.location.reload(false);
            		}
            	});
            	window.location.href="${basePath}/assistantPCAction/goHome/${uuid}/"+data.result.token;
            }else if(!check){
            	count++;
            	if(count>10)
            		window.location.reload(false);
            }
        });

    }
	initPush();
});
</script>
</body>
</html>
