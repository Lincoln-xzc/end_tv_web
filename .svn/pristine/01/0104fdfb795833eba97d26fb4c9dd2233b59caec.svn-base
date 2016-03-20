<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="../base.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8" />
<title>微家首页（PC）</title>
    
    <script type="text/javascript" src="${basePath}/static/js/jquery/jquery-1.7.2.js"></script>
    <script type="text/javascript" src="${basePath}/static/js/uploadify/jquery.uploadify.js" ></script>
    <link rel="stylesheet" type="text/css" href="${basePath}/static/js/uploadify/uploadify.css">
    
    <script type="text/javascript" src="${basePath}/static/js/My97DatePicker/WdatePicker.js" ></script>
    
    <link rel="stylesheet" href="${basePath }/static/js/jquery/themes/default/easyui.css" type="text/css" />
	<script type="text/javascript" src="${basePath }/static/js/jquery/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="${basePath }/static/js/jquery/locale/easyui-lang-zh_CN.js"></script>
	
	<link rel="stylesheet" href="${basePath}/static/css/basic.css">
    <link rel="stylesheet" href="${basePath}/static/css/public.css">
</head>
<body class="bgImg">
<div class="wp100 mgT50">
    <div class="w200 txtC mgL70">
        <img src="${basePath}/static/images/logo.png" class="flN"><span class="wp100 ftS22 clD4D4D2 txtC">微家秀秀PC版</span>
    </div>
</div>
<div class="w1000 center mgT200">
    <div class="wp100">
        <img src="${home.logo}" onerror="javascript:this.src='${basePath }/static/images/_user.png'" class="w100 h100 rd5">
        <span class="clF9F9F9 ftS20 mgL30">${home.nickname}</span>
    </div> 
    <span class="wp100 ftS18 clF9F9F9 pdTB15 mgT10">家庭新鲜事，快记录一下吧！</span>
    <form class="wp100 bg19 bd999 rd5 pd20" method="post" id="subForm" enctype="multipart/form-data">
    	<input type="hidden" name="userId" value="${userId}">
    	<input type="hidden" name="homeId" value="${home.id}">
    
        <label for = "file" class ="inputFile2 mgL5 mgT10" id="upload_label"></label>
        <input type = "file" id = "file"  multiple="true" style = "width:0; height:0;outline:none;" />
        <input type = "hidden" name = "fileSrc" id = "file_src"/>
        <input type="text" class="flR w130 h30 bdccc easyui-validatebox" onclick="WdatePicker()" 
        	name="recordTime" placeholder="记录日期" readonly="readonly" required> 
        <div class="wp100 bdccc zid3 mgT20">
            <div class="wp100 wp100_">
                <textarea class="h100 pd5 cl6 bdBe5e5e5 easyui-validatebox" name="content" 
                	id="contentText" placeholder="请填写内容"></textarea>
                <div class="pdTB20" id="imgs">
                	
                </div>
            </div>
            <div class="wp100 bdTccc pdTB10 cl6 csPT addTags">
                <img src="${basePath}/static/images/biao.png" class="mgL20 mgR10 t3">添加相关标签
            </div>
            <div class="wp100 cl19 bdTccc pdT10 pdL40 mgR10_ csPT_ LabelEle" id="tag_list">
           		<input type="hidden" name="hidTag" id="hid_tag"/>
           		<c:forEach var="tag" items="${tagList}" varStatus="vs">
           		<div>
                    <input type="checkbox" name="tags" value="${tag.tag }" class="hide tagCb">
                    <span class="bgA9ABAA rd2 pdLR5 mgB10 tagList">${tag.tag}</span>
                </div>
                </c:forEach>
            </div>
            <div class="wp100 wp100_ bdTccc cl6 ftS16 zid4 asdfg">
                <div class="lh35 csPT w_tab">
                    <div class="mgR5"><img src="${basePath}/static/images/sanjiao.png" class="mgL20 mgT15"></div>
                    <div class="addVal mgR5">记录对象</div>
                    <div class="addValCld"></div>
                </div>
                <div class="w170 wp100_ psA t35 l0 bdccc bgF4F4F4  csPT_ zid1 hide w_mod">
                	<div class="lh35 pdL40 c_box">
                        <input type="radio" class="psA l0 t0 hide Inputcb" name="record_obj" value="1">
                        <img src="${basePath}/static/images/gou.png" class="w15 psA l20 t12 hide c_gou">
                        <span class="c_Text">所有</span>
                    </div>
                    <div class="lh35 pdL40 c_box">
                        <input type="radio" class="psA l0 t0 hide Inputcb" name="record_obj" value="2">
                        <img src="${basePath}/static/images/gou.png" class="w15 psA l20 t12 hide c_gou">
                        <span class="c_Text">记录自己</span>
                    </div>
                    <div class="lh35 pdL40 c_box">
                        <input type="radio" class="psA l0 t0 hide Inputcb" name="record_obj" value="3">
                        <img src="${basePath}/static/images/gou.png" class="w15 psA l20 t12 hide c_gou">
                        <span class="c_Text">家庭成员</span><!-- 记录家庭 -->
                    </div>
                    
                    <c:forEach var="ui" items="${homeUserList}" varStatus="vs">
                    	<div class="lh35 pdL45 c_boxCld">
	                        <input type="checkbox" class="psA l0 t0 hide InputCld" name="record_mems" value="${ui.id}">
	                        <img src="${basePath}/static/images/gou.png" class="w15 psA l25 t12 hide c_gouCld">
	                        <span class="c_TextCld">${ui.nickname}</span>
	                    </div>
                    </c:forEach>
                    
                </div> 
            </div> 
            <div class="wp100 wp100_ bdTccc cl6 ftS16 zid3 asdfg">
                <div class="lh35 csPT w_tab">
                    <div class="mgR5"><img src="${basePath}/static/images/sanjiao.png" class="mgL20 mgT15"></div>
                    <div class="addVal mgR5">隐私权限</div>
                    <div class="addValCld"></div>
                </div>
                <div class="w170 wp100_ psA t35 l0 bdccc bgF4F4F4 zid3 csPT_ hide w_mod">
                    <div class="lh35 pdL40 c_box">
                        <input type="radio" class="psA l0 t0 hide Inputcb" name="view_obj" value="1">
                        <img src="${basePath}/static/images/gou.png" class="w15 psA l20 t12 hide c_gou">
                        <span class="c_Text">所有人可见</span>
                    </div>
                    <div class="lh35 pdL40 c_box">
                        <input type="radio" class="psA l0 t0 hide Inputcb" name="view_obj" value="2">
                        <img src="${basePath}/static/images/gou.png" class="w15 psA l20 t12 hide c_gou">
                        <span class="c_Text">我的家庭</span>
                    </div>
                    <div class="lh35 pdL40 c_box">
                        <input type="radio" class="psA l0 t0 hide Inputcb" name="view_obj" value="3">
                        <img src="${basePath}/static/images/gou.png" class="w15 psA l20 t12 hide c_gou">
                        <span class="c_Text">部分成员</span>
                    </div>
                       
                    <c:forEach var="ui" items="${homeUserList}" varStatus="vs">
                    	<div class="lh35 pdL45 c_boxCld">
	                        <input type="checkbox" class="psA l0 t0 hide InputCld" name="view_mems" value="${ui.id}">
	                        <img src="${basePath}/static/images/gou.png" class="w15 psA l25 t12 hide c_gouCld">
	                        <span class="c_TextCld">${ui.nickname}</span>
	                    </div>
                    </c:forEach>  
                                                                        
                </div>                
            </div>                      
        </div>
        <div class="wp100 mgT50">
            <div class="mgT15">
                <img src="${basePath}/static/images/place.png">
                <span class="bgF3F3F3 pdLR10 rd10">${cityMap.city}</span>
                <input type="hidden" name="adname" value="${cityMap.city}"/>
                <input type="hidden" name="adcode" value="${cityMap.adcode }"/>
            </div>
            <div class="flR">
                <div class="lh50 mgR20"><input type="checkbox" class="w20 h20 mgR5 mgT15" name="tree" id="isTree" value="1">时光树</div>
                <span class="w120 h50 lh50 txtC ftS18 cl15 bgF5AB40 rd10 csPT release" onclick="doRelease();">发布</span>
            </div>
        </div>
    </form>
</div>
<div class="wp100 h200"></div>
<div class="hide divLayer">
    <div class="mask opt5"></div>
    <div class="h300 hide tags ">
        <div class="Box_tit">
            添加标签
            <span class="flR h100 cl19 pdR20 csPT closed">X</span>
        </div>
        <div class="BoxCont">
            <input type="text" class="w295 dateInput mgL100 mgT50" placeholder="输入新标签" id="tag_val"/>
            <div class="w295 mgL100">
                <span class="saveBtn mgL90 mgT30" onclick="addTag();">完成</span>
            </div>
        </div>
    </div>
    <div class="hide inforC pdTB30">
        <div class="wp100 txtC ftS22 ">
            信息提交中,请稍等！
        </div>
        <div class="wp100 txtC ftS22 hide" >
            <span style="float:none;" id="resultSpan">信息发布成功！</span>
        </div>        
    </div>
</div>
<script src="${basePath}/static/js/basic.js" ></script>
<script src="${basePath}/static/js/script.js" ></script>
</body>
</html>

<script type="text/javascript">
$(function(){
	var imgCount = 0;
	$('#upload_label').uploadify({
		height        : 30,
		width         : 60,
		swf            : '${basePath}/static/js/uploadify/uploadify.swf',
		'fileObjName' : 'imageFile',
		//buttonClass  : 'inputFile2 mgL5 mgT10',
		buttonText   : "选择照片",
		uploader       : '${basePath}/assistantPCAction/uploadFiles',
		'fileTypeExts' : '*.jpg; *.png;*.jpeg;*.gif;*.bmp',
		'queueSizeLimit' : 1024*1024*5,
		'removeTimeout' : 1,
		successTimeout:60*15,
		'queueID': 'imgFileQueue',
		'multi'     : false,
		'onSelect' : function() {
			if(imgCount>8){
				$('#upload_label').uploadify('cancel');
				alert("最毒只能选择9张图片");
			}
        },
		'onUploadSuccess' : function(file, data, response) {
			var objData = jQuery.parseJSON(data);
			if(objData.success){
				var innerStr = "<span id='imgshowSpan"+index+"' class='w95 h95 mgL10'>"+
				"<img id=\"imgShow"+index+"\" class=\"w95 h95 mgL10\" ondblclick=\"_delete('imgshowSpan"+index+"')\">"+
				"</span>";
				document.getElementById("imgs").innerHTML += innerStr;
				$('#'+'imgShow'+index).attr('src',objData.resultObject);
				
				$('#file_src').val(objData.resultObject+","+$('#file_src').val());  // 图片的路径
				imgCount++;
			}else{
				alert(objData.msg);
			}
			index++;
		}
	});
}); 

var index=0;

function _delete(span){
	$('#'+span).remove();
}

function addTag(){
	if($("#tag_val").val()=='')
		return false;
	
	// 保存标签
	$.ajax({
		url:'${basePath}/assistantPCAction/addTag/${home.id}/${userId}',
		type:'post',
		data:{
			tag: $("#tag_val").val()
		},
		dataType:'json',
		success: function(data){
			if(data.code==0){
				var innerHTML = "<div>"+
						        "<input type=\"checkbox\" class=\"hide tagCb\" name='tags' value='"+$("#tag_val").val()+"' id=\"chkbox_"+index+"\">"+
						    	"<span class=\"bgA9ABAA rd2 pdLR5 mgB10 tagList\">"+$("#tag_val").val()+"</span>"+
							"</div>";
				$("#tag_list").append(innerHTML);
				
				//$("#chkbox_"+index).attr("checked",true); 
				//$("#chkbox_"+index).css("background-color","#F5AB40");
				
				LabelColor();
				
				index++;
			}else if(data.code=130){
				alert("标签已存在");
			}else
				alert("保存失败");
		}
	});
}

// 发布
function doRelease(){
	if(!$('#subForm').form('validate')){
		return false;
	}
	var imgSrc = $("#file_src").val();
	var content = $("#contentText").val();
	if((imgSrc==null || imgSrc=='')&&(content==null || content=='')){
		alert('请填写内容或上传照片');
		return false;
	}
	$.ajax({
		type:'post',
		url:"${basePath}/assistantPCAction/saveDynamic/${uuid}/${token}",
		data: $('#subForm').serialize(),
		beforeSend : function() {
			$(".divLayer").show();
			$(".inforC").show();
		},
		success: function(data) {
			if(data.relogin)
				window.location.href="${basePath}/";
			if(data.success){
				$(".divLayer").hide();
				$(".inforC").hide();
				alert("保存成功");
				window.location.href = "${basePath}/assistantPCAction/goHome/${uuid}/${token}";
			}else{
				alert("保存失败");
			}
		},
		complete : function() {
			$(".divLayer").hide();
			$(".inforC").hide();
		}
	});
	return false;
}
</script>