if(typeof String.prototype.trim !== 'function'){
    String.prototype.trim = function(){
        var self = this;
        function sliceStr(){
            if(self.charAt(0) === " "){
                self = self.slice(1);
            }
            if(self.charAt(self.length-1) === " "){
                self = self.slice(0,self.length-1);
            }
            if(self.charAt(0) === " " || self.charAt(self.length-1) === " "){
                sliceStr();
            }
        }
        sliceStr();
        return self;
    }
}
var nextFlash = window.requestAnimationFrame||
            window.mozRequestAnimationFrame||
            window.webkitRequestAnimationFrame||
            window.msRequestAnimationFrame||
            function(callback){
                window.setTimeout(callback,1000/60);
            };
var ydm = function(){
    var param = arguments[0];
    if(!param){
        return false;
    }
    if(typeof param === "string"){
        return ydm.selectNodes(param);
    }
    if(ydm.checkNode(param) ){
        return ydm.addProperty(param);
    }
};
ydm.selectNodes = function(str){
    if(typeof str !== "string" || str === ""){
        return [];
    }
    str = str.trim();
    var index = str.indexOf(" ");
    if(index === -1){
        if(str.charAt(0) === "#"){
            str = str.slice(1);
            return document.getElementById(str);
        }
        if(str.charAt(0) === "."){
            str = str.slice(1);
            return ydm.getByClass(str);
        }
        return document.getElementsByTagName(str);
    }else{
        if(!str.charAt(0) === "."){
            return false;
        }
        str = str.slice(1);
        index = str.indexOf(" ");
        var left = str.slice(0,index).trim();
        var right = str.slice(index+1).trim();
        if(right.charAt(0) === "."){
            str = left + " " + right.slice(1);
            return ydm.getByClass2(str);
        }else{
            str = left + " " + right;
            return ydm.getByTag(str);
        }
    }
};
ydm.addProperty = function(elem){
    if(elem.getAttribute("addProperty")){
        return false;
    }
    elem.addProperty = true;
    elem.getById = function(str){
        return document.getElementById(str);
    }
    elem.getByClass = function(str){
        if(!str){
            return false;
        }
        str = str.trim();
        var index = str.indexOf(" ");
        if(index === -1){
            return ydm.getByClassWithInElem(this,str);
        }else{
            var parent = ydm.getByClassWithInElem(this,str.slice(0,index));
            if(!parent[0]){
                return parent;
            }else{
                parent = parent[0];
                return ydm.getByClassWithInElem(parent,str.slice(index+1));
            }
        }
    }
    elem.getByTag = function(str){
        str = str.trim();
        var index = str.indexOf(" ");
        if(index === -1){                
            return this.getElementsByTagName(str);
        }else{
            var parent = ydm.getByClassWithInElem(this,str.slice(0,index));
            if(!parent[0]){
                return parent;
            }else{
                parent = parent[0];
                return parent.getElementsByTagName(str.slice(index+1));
            }
        }
    }
    elem.addEvent = function(str,func,value){
        str = String(str);
        if(!str){
            return false;
        }
        value = false;
        if(value){
            value = true;
        }
        if(str === "click"){
            ydm.addEvent(this,"click",func);
            ydm.addEvent(this,"touchend",func);
            ydm.addEvent(this,"touchstart",function(){
                ydm.preventDefault();
            });
        }else{
            ydm.addEvent(this,str,func);
        }
        return this;
    };
    return elem;
};
ydm.checkObj = function(obj){
    if(!obj || typeof obj !== "object"){
        return false;
    }
    return true;
};
ydm.checkNode = function(node){
    if(!node || typeof node !== "object" || node.nodeType !== 1){
        return false;
    }
    return true;
};
ydm.running = (function(){
    var funcs = [];
    var ready = false;
    function handler(e){
        if(ready){
            return;
        }
        if(e.type==="readystatechange"&&document.readyState!=="complete"){
            return;
        }
        for(var i=0; i < funcs.length; i++){
            funcs[i].call(document);
        }
        ready = true;
        funcs = null;
    }
    if(document.addEventListener){
        document.addEventListener("DOMContentLoaded",handler,false);
        document.addEventListener("readystatechange",handler,false);
        window.addEventListener("load",handler,false);
    }else if(document.attachEvent){
        document.attachEvent("onreadystatechange",handler);
        window.attachEvent("onload",handler);
    }
    return function(f){
        if(ready){
            f.call(document);
        }else{
            funcs.push(f);
        }
    };
}());
ydm.getAllNodesInNode = function(node){
    if(!ydm.checkNode(node)){
        return false;
    }
    if(node.nodeType !== 1){
        return false;
    }
    var arr = [];
    function recursive(nextNode){
        var nodes = nextNode.childNodes;
        var i;
        for(i=0;i<nodes.length;i++){
            if(nodes[i].nodeType === 1){
                arr.push(nodes[i]);
                recursive(nodes[i]);
            }
        }
    };
    recursive(node);
    return arr;
};
ydm.checkClassName = function(className,str){
    var index = 0;
    var leftChar  = "";
    var rightChar  = "";
    index = className.indexOf(str);
    if(index === -1){
        return false;
    }
    if(index !== 0){
        leftChar = className.charAt(index-1);
        if(leftChar !== " "){
            return false;
        }
    }
    if(index + str.length !== className.length){
        rightChar = className.charAt(index + str.length);
        if(rightChar !== " "){
            return false;
        }
    }
    return true;
};
ydm.deleteClassName = function(elem,name){
    if(!ydm.checkNode(elem)||!name){
        return false;
    }
    var str = elem.className;
    var check = ydm.checkClassName(str,name);
    if(check){
        str = str.replace(name,"").trim();
        elem.className = str;
    }
}
ydm.getByClass = function(str){
    if(typeof str !== "string" || str === ""){
        return [];
    }
    var results = [];
    var className = "";
    var elems = document.getElementsByTagName("*");
    for(i = 0; i < elems.length; i++){
        className = elems[i].className;
        if(this.checkClassName(className,str)){
            results.push(elems[i]);
        }
    }
    return results;
};
ydm.getByClassWithInElem = function(elem,str){
    if(!elem){
        return [];
    }
    var results = [];
    var nodes = this.getAllNodesInNode(elem);
    var className = "";
    for(i = 0; i < nodes.length; i++){
        className = nodes[i].className;
        if(this.checkClassName(className,str)){
            results.push(nodes[i]);
        }
    }
    return results;
};
//根据类名获取节点 ,具备二级级检索功能
ydm.getByClass2 = function(str){
    if(typeof str !== "string" || str === ""){
        return [];
    }
    str = str.trim(str);
    var index = str.indexOf(" ");
    if(index === -1){
        return ydm.getByClass(str);
    }else{
        var parent = ydm.getByClass(str.slice(0,index));
        if(!parent[0]){
            return parent;
        }else{
            parent = parent[0];
            return ydm.getByClassWithInElem(parent ,str.slice(index+1));
        }
    }
}
ydm.getByTag = function (str){
    if(!str){
        return false;
    }
    str = str.trim(str);
    var index = str.indexOf(" ");
    if(index==-1){                
        return document.getElementsByTagName(str);
    }else{
        var parent = ydm.getByClass(str.slice(0,index));
        if(!parent[0]){
            return parent;
        }else{
            parent = parent[0];
            return parent.getElementsByTagName(str.slice(index+1));
        }
    }
}
ydm.addEvent = function(elem,type,func){
    if(elem.addEventListener){
        elem.addEventListener(type,func,false);
    }else if(elem.attachEvent){
        elem.attachEvent("on" + type,func);
    }else{
        elem["on" + type] = func;
    }
};
ydm.removeEvent = function(elem,type,func){
    if(elem.removeEventListener){
        elem.removeEventListener(type,func,false);
    }else if(elem.detachEvent){
        elem.detachEvent("on"+type,func);
    }else{
        elem["on"+type] = null;
    }
};
ydm.getEvent = function(event){
    return event ? event : window.event;
};
ydm.preventDefault = function(event){
    if(event.preventDefault){
        event.preventDefault();
    }else{
        event.returnValue = false;
    }
};
ydm.stopPropagation = function(event){
    if(!event){
        event = ydm.getEvent();
    }
    if(event.stopPropagation){
        event.stopPropagation();
    }else{
        event.cancelBubble = true;
    }
};
ydm.getViewportSize = function (w){
    w = w || window;
    if(w.innerWidth != null)
        return { "width":w.innerWidth , "height":w.innerHeight };
    var d = w.document ;
    if(document.compatMode == "CSS1Compat")
        return { "width":d.documentElement.clientWidth,
                 "height":d.documentElement.clientHeight};
    return { "width":d.body.clientWidth , "height":d.body.clientHeight };
};
ydm.getScrollOffsets = function (){
    var w = window;
    if(w.pageXOffset != null)
        return { x:w.pageXOffset , y:w.pageYOffset };
    var d = w.document;
    if(document.compatMode=="CSS1Compat")
        return { x:d.documentElement.scrollLeft , y:d.documentElement.scrollTop };
    return { x:d.body.scrollLeft , y:d.body.scrollTop };
};
ydm.getElementCoordinate = function(elem){
    if(!elem){
        return false;
    }
    var box = elem.getBoundingClientRect();
    var offsets = ydm.getScrollOffsets();
    elem.x = box.left + offsets.x ;
    elem.y = box.top + offsets.y ;
    return { x:elem.x , y:elem.y };
};
ydm.getCoordinateDist = function(elem1,elem2){
    if(!elem1||!elem2){
        return false;
    }
    ydm.getElementCoordinate(elem1);
    ydm.getElementCoordinate(elem2);
    var x = elem2.x - elem1.x ;
    var y = elem2.y - elem1.y ; 
    return {"distX":x,"distY":y}
};
ydm.getDistance = function(elem1,elem2){
    if(!elem1||!elem2){
        return false;
    }
    getElementCoordinate(elem1);
    getElementCoordinate(elem2);
    var distX = elem2.x - elem1.x ;
    var distY = elem2.y - elem1.y ; 
    if(distX<0){
        distX = -(distX);
    }
    if(distY<0){
        distY = -(distY);
    }
    return {"distX":distX,"distY":distY}
};
ydm.mouseToElementDistance = function(elem){
    if(!elem){
        return false;
    }
    var scroll = ydm.getScrollOffsets();
    mouseX = event.clientX + scroll.x;
    mouseY = event.clientY + scroll.y;
    ydm.getElementCoordinate(elem);
    elem.mouseDistX = mouseX - elem.x;
    elem.mouseDistY = mouseY - elem.y;
    return {"mouseDistX":elem.mouseDistX , "mouseDistY":elem.mouseDistY};
};
ydm.getElementSize = function(elem){
    var box = elem.getBoundingClientRect();
    elem.width = box.right - box.left;
    elem.height = box.bottom - box.top;
    if(elem.getAttribute("width")){     
        elem.width = parseInt(elem.getAttribute("width"));
    }
    if(elem.getAttribute("height")){
        elem.height = parseInt(elem.getAttribute("height"));
    }
    if(elem.style.width!=""){
        elem.width = parseInt(elem.style.width);
    }
    if(elem.style.height!=""){
        elem.height = parseInt(elem.style.height);
    }
    return { width:elem.width , height:elem.height };
}
ydm.getDist_TouchToElem = function(elem,event){
    if(!event){
        event = window.event;
    }
    getElementCoordinate(elem);
    distX = event.changedTouches[0].pageX - elem.x;
    distY = event.changedTouches[0].pageY - elem.y;
    return { "touchDistX":distX , "touchDistY":distY };
}
//动画函数(存在一个问题 ,使用时提示非法函数?)
ydm.flash = window.requestAnimationFrame||
            window.mozRequestAnimationFrame||
            window.webkitRequestAnimationFrame||
            window.msRequestAnimationFrame||
            function(callback){
                window.setTimeout(callback,1000/60);
            };
ydm.buildCurve = function(obj){
    if(!ydm.checkObj(obj)){
        return 0;
    }
    var nowTime   = obj.nowTime || new Date(),
        startTime = obj.startTime,
        speed     = obj.speed,
        totalDist = obj.totalDist,
        power     = obj.power || 2;
    if(!startTime||!speed||!totalDist){
        return 0;
    }
    return  Math.pow((nowTime - startTime)*speed/totalDist,power)*totalDist;
};
ydm.move = function(obj){
    if(!ydm.checkObj(obj)){
        return false;
    }
    var elem = obj.elem ,
        left = obj.left ,
        top  = obj.top ,
        time = obj.time || 2000,
        callBack  = obj.callBack ,
        instantly = obj.instantly;
    if(!ydm.checkNode(elem)){
        return false;
    }
    left = parseInt(left);
    top = parseInt(top);
    if(isNaN(left) && isNaN(top)){
        return false;
    }
    if(isNaN(left)){
        elem.moveX = false;
    }else{
        elem.moveX = true;
    }
    if(isNaN(top)){
        elem.moveY = false;
    }else{
        elem.moveY = true;
    }
    if(instantly){
        if(elem.moveX){
            elem.style.left = left + "px";
        }
        if(elem.moveY){
            elem.style.top = top + "px";
        }
        return false;
    }  
    var totalDist_x = 0,
        totalDist_y = 0,
        movedX   = 0,
        movedY   = 0,
        initLeft = 0,
        initTop  = 0,
        speedX   = 0,
        speedY   = 0,
        startTime = null,
        nowTime   = null;
    var coords = ydm.getCoordinateDist(elem.parentNode,elem);
    if(elem.moveX){
        if(!elem.style.left){
            totalDist_x = left - coords.distX;
            initLeft = coords.distX;
        }else{
            totalDist_x = left - parseInt(elem.style.left);
            initLeft = parseInt(elem.style.left);
        }
        speedX = Math.abs(totalDist_x/time);
    }
    if(elem.moveY){
        if(!elem.style.top){
            totalDist_y = top - coords.distY;
            initTop = coords.distY;
        }else{
            totalDist_y = top - parseInt(elem.style.top);
            initTop = parseInt(elem.style.top);
        }
        speedY = Math.abs(totalDist_y/time);
    }
    startTime = new Date();
    var buildCurve = {
        startTime : startTime,
        power : 4
    };
    function moving(){
        nowTime = new Date();
        if(nowTime - startTime >= time){
            if(elem.moveX){
                elem.style.left = left + "px";
            }
            if(elem.moveY){
                elem.style.top = top + "px";
            }
            if(typeof callBack === "function"){
                callBack();
            }
            return false;
        }
        if(elem.moveX){
            buildCurve.speed = speedX;
            buildCurve.totalDist = totalDist_x
            movedX = ydm.buildCurve(buildCurve);
            elem.style.left = initLeft + movedX + "px";
        }
        if(elem.moveY){
            buildCurve.speed = speedY;
            buildCurve.totalDist = totalDist_y
            movedY = ydm.buildCurve(buildCurve);
            elem.style.top = initTop + movedY + "px";
        }
        nextFlash(moving);
    }
    nextFlash(moving);
};
ydm.cgSize = function(obj){
    if(!ydm.checkObj(obj)){
        return false;
    }
    var elem   = obj.elem,
        width  = obj.width,
        height = obj.height,
        time   = obj.time || 500;
    if(!ydm.checkNode(elem)){
        return false;
    }
    ydm.getElementSize(elem);
    var totalW ,totalH;
    var initW = elem.width,
        initH = elem.height;
    width = parseInt(width);
    if(!isNaN(width)){
        totalW = width - initW;
    }
    height = parseInt(height);
    if(!isNaN(height)){
        totalH = height - initH;
    }
    var startTime = new Date();
    var objParam = { startTime : startTime };
    function running(){
        nowTime = new Date();
        if(width || width === 0){
            objParam.speed = totalW/time;
            objParam.totalDist = totalW;
            elem.style.width = initW + ydm.buildCurve(objParam) + "px";
        }
        if(height || height === 0){
            objParam.speed = totalH/time;
            objParam.totalDist = totalH;
            try{
                elem.style.height = initH + ydm.buildCurve(objParam) + "px";
            }catch(e){
            }
        }
        if(nowTime - startTime > time){
            if(width || width === 0){
                elem.style.width = width + "px";
            }
            if(height || height === 0){
                elem.style.height = height + "px";
            }
            return false;
        }
        nextFlash(running);
    }
   running();
};
ydm.fadeIn = function(elem,time){
    if(!ydm.checkNode(elem)){
        return false;
    }
    var time = time || 500;
    var startTime = new Date(),
        nowTime = null,
        speedOpt = 1/time,
        speedFil = 100/time;
    var obj = {
        startTime : startTime
    };
    function running(){
        nowTime = new Date();
        obj.totalDist = 1;
        obj.speed = speedOpt;
        elem.style.opacity = ydm.buildCurve(obj);
        obj.totalDist = 100;
        obj.speed = speedFil;
        elem.style.filter = "Alpha(Opacity=" + ydm.buildCurve(obj) +")";
        if(nowTime - startTime < time){
            nextFlash(running);
        }else{
            elem.style.opacity = 1;
            elem.style.filter = "Alpha(Opacity=100,FinishOpacity=100,Style=0)";
        }
    }
    nextFlash(running);
}
ydm.fadeOut = function(elem,time){
    if(!ydm.checkNode(elem)){
        return false;
    }
    var time = time || 500;
    var opacity = 0;
    var filter  = 0;
    var startTime = new Date(),
        nowTime = null,
        speedOpt = 1/time,
        speedFil = 100/time;
    var obj = {
        startTime : startTime
    };
    function running(){
        nowTime = new Date();
        obj.totalDist = 1;
        obj.speed = speedOpt;
        elem.style.opacity = 1-ydm.buildCurve(obj);
        obj.totalDist = 100;
        obj.speed = speedFil;
        elem.style.filter = "Alpha(Opacity=" + (100 - ydm.buildCurve(obj)) +")";
        if(nowTime - startTime < time){
            nextFlash(running);
        }else{
            elem.style.opacity = 0;
            elem.style.filter = "Alpha(Opacity=0,FinishOpacity=0,Style=0)";
        }
    }
    nextFlash(running);
}
ydm.imgsSwitch = function(){
    var elems = ydm(".imgsSwitch");
    if(elems.length === 0){
        return false;
    }
    for(var i=0; i<elems.length; i++){
        loadFunc(elems[i]);
    }
    function loadFunc(elem){
        ydm(elem);
        var imgs  = elem.getByClass("img");
        var tars  = elem.getByClass("tar");
        var left  = elem.getByClass("left")[0];
        var right = elem.getByClass("right")[0];
        if(imgs.length === 0 || imgs.length < 2){
            return false;
        }
        if(tars.length === imgs.length){
            elem.cgTar = true;
        }
        var i ;
        for(i=0; i < imgs.length; i++){
            imgs[i].index = i;
        }
        for(i=0; i < tars.length; i++){
            tars[i].index = i;
        }
        var oNow = imgs[0];
    	var oNext = imgs[1];
        var interval = null;
        function toNext(){
            fade(oNow,oNext);
            cgTar(oNow.index,oNext.index);
            oNow = oNext;
            reset();
        }
        function toBefor(){
            if(oNow.index === 0){
                oNext = imgs[imgs.length-1];
            }else{
                oNext = imgs[oNow.index-1];
            }
            fade(oNow,oNext);
            cgTar(oNow.index,oNext.index);
            oNow = oNext;
            reset();
        }
        function fade(fadeOut,fadeIn){
            ydm.fadeOut(fadeOut);
            ydm.fadeIn(fadeIn); 
        }
        function cgTar(nowT,nextT){
            if(!elem.cgTar){
                return false;
            }
            ydm.deleteClassName(tars[nowT],"imgsSwitch_tar");
            tars[nextT].className += " imgsSwitch_tar";
        }
        function reset(){
            if(oNow.index === imgs.length-1){
                oNext = imgs[0];
            }else{
                oNext = imgs[oNow.index+1];
            }
        }
        function loop(){
            interval = setInterval(function(){
                toNext();
            },3000);
        }
        loop();
        if(ydm.checkNode(right)){
            ydm(right).addEvent("click",function(){
                clearTimeout(interval);
                toNext();
                loop();
            });
        }
        if(ydm.checkNode(left)){
            ydm(left).addEvent("click",function(){
                clearTimeout(interval);
                toBefor();
                loop();
            });
        }
    }
};
ydm.running(ydm.imgsSwitch);
ydm.imgsMove = function(){
    var elems = ydm(".imgsMove");
    if(elems.length === 0){
        return false;
    }
    for(var i=0; i<elems.length; i++){
        loadFunc(elems[i]);
    }
    function loadFunc(elem){
        ydm(elem);
        elem.style.overflow = "hidden";
        var mdl   = elem.getByClass("mdl")[0];
        if(!mdl){
            return false;
        }
        mdl.innerHTML += mdl.innerHTML;
        var imgs  = elem.getByClass("img"),
            tars  = elem.getByClass("tar"),
            left  = elem.getByClass("left")[0],
            right = elem.getByClass("right")[0];
        if(imgs.length === 0 || imgs.length < 2){
            return false;
        }
        var imgW = ydm.getElementSize(imgs[0]).width;
        mdl.style.width = imgW * imgs.length + "px";
        if(tars.length === imgs.length/2){
            elem.cgTar = true;
        }
        var i ;
        for(i = 0; i < imgs.length; i++){
            imgs[i].index = i;
        }
        for(i = 0; i < tars.length; i++){
            tars[i].index = i;
        }
        var oNow   = 0;
        var oNext  = 1;
        var oBefor = imgs.length/2-1;
        var interval = null;
        var obj = { 
            elem : mdl,
            time : 500
        };
        function toNext(){
            if(oNow === imgs.length/2){
                obj.left = 0;
                obj.instantly = true;
                ydm.move(obj);
                oNext = 1;
            }
            obj.left = - oNext * imgW;
            obj.instantly = false;
            ydm.move(obj);
            cgTar(oNow,oNext);
            oNow = oNext;
            reset();
        }
        function toBefor(){
            if(oNow === 0){
                obj.left = - imgs.length/2 * imgW;;
                obj.instantly = true;
                ydm.move(obj);
                oBefor = imgs.length/2 -1;
            }
            obj.left = - oBefor * imgW;
            obj.instantly = false;
            ydm.move(obj);
            cgTar(oNow,oBefor);
            oNow  = oBefor;
            reset();
        }
        function reset(){
            if(oNow === imgs.length/2){
                oNext = 1;
            }else{
                oNext = oNow + 1;
            }
            if(oNow === 0){
                oBefor = imgs.length/2 - 1;
            }else{
                oBefor = oNow - 1;
            }
        }
        function cgTar(nowT,nextT){
            if(!elem.cgTar){
                return false;
            }
            if(nowT === imgs.length/2){
                nowT = 0;
            }
            if(nextT === imgs.length/2){
                nextT = 0;
            }
            ydm.deleteClassName(tars[nowT],"imgsMove_tar");
            tars[nextT].className += " imgsMove_tar";
        }
        function loop(){
            interval = setInterval(function(){
                toNext();
            },3000);
        };
        loop();
        if(ydm.checkNode(right)){
            ydm(right).addEvent("click",function(){
                clearTimeout(interval);
                toNext();
                loop();
            });
        }
        if(ydm.checkNode(left)){
            ydm(left).addEvent("click",function(){
                clearTimeout(interval);
                toBefor();
                loop();
            });
        }
    }
};
ydm.running(ydm.imgsMove);
//下拉伸缩菜单
ydm.dropDown_nav = function(){
    var elem = ydm(".pullDown_nav")[0];
    if(!elem){
        return false;
    }
    ydm(elem);
    var tabs = elem.getByClass("pullD_tab");
    var mdls = elem.getByClass("pullD_mdl");
    var jsn = {
        "tabs":tabs,
        "mdls":mdls,
        "checkedCl":"rgb(255,52,0)"
    };
    ydm.dropDownNav(jsn);
}
ydm.running(ydm.dropDown_nav);
ydm.dropDownNav = function (jsn){
    var tabs      = jsn.tabs;
    var mdls      = jsn.mdls;
    var checkedCl = jsn.checkedCl;
    if(!tabs||!mdls){
        return false;
    }
    if(tabs.length ===0 || tabs.length != mdls.length){
        return false;
    }
    var mdlText = null;
    for(var i=0;i<tabs.length;i++){
        tabs[i].index = i;
        mdls[i].state = "hide";
        mdlText = ydm(mdls[i]).getByClass("pullD_content")[0];
        if(mdlText){
            mdls[i].targetH = ydm.getElementSize(mdlText).height;
        }else{
            mdls[i].targetH = 0;
        }
        addEvent(tabs[i],mdls[i]);
    }
    function addEvent(tab,mdl){
        ydm(tab).addEvent("click",function(){
            if(mdl.state === "hide"){
                if(checkedCl){
                    tab.style.color = "rgb(255,52,0)";
                }
                mdl.style.zIndex = 600;
                ydm.cgSize({ elem:mdl, height:mdl.targetH ,time:300 });
                mdl.state = "show";
                resetOthersH(tab.index);
            }else{
                tab.style.color = "";
                ydm.cgSize({ elem:mdl, height:0 ,time:300 });
                mdl.state = "hide";
            }
        });
    }
    function resetOthersH(index){
        for(var x=0;x<mdls.length;x++){
            if(x==index){
                continue;
            }
            mdls[x].style.zIndex = 500;
            ydm.cgSize({ elem:mdls[x], height:0 ,time:300 });
            mdls[x].state = "hide";
            tabs[x].style.color = "";
        }
    }
}
//等待改版，整合到ydm环境中
var ydmScroll = {
    "moving":false,
    "x":0,
    "y":0,
    "count":0,
    "arrY":new Array()
};
function moveScroll_y(targetY){
    if(!targetY && targetY!=0){
        return false;
    }
    targetY = parseInt(targetY);
    var coordinate = ydm.getScrollOffsets();
    ydmScroll.y = coordinate.y;
    if(ydmScroll.y === targetY){
        return false;
    }
    
    window.scrollTo(null,targetY);
}
function goTop(){
    var gotop = ydm(".goTop")[0];
    if(!gotop){
        return false;
    }
    ydm.addEvent(gotop,"click",function(){
        moveScroll_y(0);
    });
}
ydm.running(goTop);
ydm.flashLocus = function(jsn){
    var dist  = jsn.dist;
    var locus = jsn.locus;
    if(!dist){
        return false;
    }
    var array = new Array();
    var value = 0;
    if(!locus){
        for(var i=0;i<=1;i+=1/30){
            value = (i-Math.sin(i * 2*Math.PI)/(2*Math.PI))*dist;
            array.push(value);
        }
        array.push(dist);
    }else{
        if(locus=="increase"){
            for(var i=0; i<=1; i+=1/30){
                value = Math.pow(i,3)*dist;
                array.push(value);
            }
            array.push(value);
        }
        if(locus=="decrease"){
            for(var i=0; i<=1; i+=1/30){
                value = (1-Math.pow(1-i,3))*dist;
                array.push(value);
            }
            array.push(dist);
        }
    }
    return array;
}

//function addScrollEvent(elem,toTop,toBottom){
//    if(!elem){
//        return false;
//    }
//    var isMacWebkit = (navigator.userAgent.indexOf("Safari")!==-1&&navigator.userAgent.indexOf("Version")!==-1);
//    var isFirefox = (navigator.userAgent.indexOf("Firefox")!==-1);
//    elem.onwheel = scrollEventFun;
//    elem.onmousewheel = scrollEventFun;
//    if(isFirefox){
//        ydm(elem).addEvent("DOMMouseScroll",scrollEventFun,false);
//    }
//    function scrollEventFun(event){
//        event = event || window.event;
//        event.stopPropagation();
//        var deltaY = 0;
//        if(event.deltaY)
//            deltaY = event.deltaY * -1;
//        else if(event.wheelDelta)
//            deltaY = event.wheelDelta;
//        else 
//            deltaY = event.detail * -1;
//        if(!event.ctrlKey){
//            if(deltaY > 0){
//                toTop();
//            }else{
//                toBottom();
//            }
//        }
//    }
//}

//function touch_shufflingFigure_move(jsn){
//    var imgsMdl = jsn.imgsMdl;
//    var imgs    = jsn.imgs;
//    var tars    = jsn.tars;
//    var cgTars  = jsn.cgTars;
//    if(!imgsMdl||!imgs||!tars){
//        return false;
//    }
//    var index = 0;
//    var dist = getElementSize(imgs[0]).width;
//    var targetX = new Array();
//    for(var i=0;i<imgs.length;i++){
//        targetX.push(-i*dist);
//    }
//    imgsMdl.style.left = "0px";
//    var startMoving = function(){
//        imgsMdl.animation = setInterval(function () {
//            index++;
//            if(index==imgs.length){
//                ydm_moveElement_x({"elem":imgsMdl,"x":targetX[0],"locus":"increase"});
//                if(cgTars){
//                    jsn.now  = imgs.length-1;
//                    jsn.next = 0;
//                    cgTars(jsn);
//                }
//                index = 0;
//            }else{
//                ydm_moveElement_x({"elem":imgsMdl,"x":targetX[index],"locus":"increase"});
//                if(cgTars){
//                    jsn.now  = index-1;
//                    jsn.next = index;
//                    cgTars(jsn);
//                }
//            }
//        },3500);
//    };
//    startMoving();
//    var touchStart_x    = null;
//    var touchStart_time = null;
//    var touchEnd_time   = null;
//    var touchMove_dist  = null;
//    var nowX_move = 0;
//    ydm(imgsMdl).addEvent('touchstart',function(event){
//        if(!event){
//            event = window.event;
//        }
//        if(imgsMdl.animation){
//            clearTimeout(imgsMdl.animation);
//        }
//        if(imgsMdl.moveX){
//            return false;
//        }
//        event.stopPropagation();
//        touchStart_x    = event.touches[0].clientX;
//        touchStart_time = new Date()*1;
//        nowX_move = parseInt(imgsMdl.style.left);
//    },false);
//    imgsMdl.addEvent('touchmove',function(event){
//        if(!event){
//            event = window.event;
//        }
//        if(imgsMdl.moveX){
//            return false;
//        }
//        event.preventDefault();
//        event.stopPropagation();
//        touchMove_dist = event.changedTouches[0].clientX - touchStart_x;
//        var check = nowX_move + touchMove_dist;
//        if(check > -(imgs.length-1)*dist && check<0 ){    
//            imgsMdl.style.left  = check + "px";
//        }
//    },false);
//    imgsMdl.addEvent('touchend',function(event){
//        if(!event){
//            event = window.event;
//        }
//        if(imgsMdl.moveX){
//            return false;
//        }
//        event.preventDefault();
//        event.stopPropagation();
//        touchEnd_time = new Date()*1;
//        var nowIndex = index;
//        if(touchMove_dist < -dist/6){
//            if(index+1 < targetX.length){
//                index++;
//                ydm_moveElement_x({"elem":imgsMdl,"x":targetX[index],"locus":"increase"});
//            }
//        }else if(touchMove_dist > dist/6){
//            if(index-1 >= 0){
//                index--;
//                ydm_moveElement_x({"elem":imgsMdl,"x":targetX[index],"locus":"increase"});
//            }
//        }else{
//            ydm_moveElement_x({"elem":imgsMdl,"x":targetX[index],"locus":"increase"});
//        }
//        if(cgTars){
//            jsn.now  = nowIndex;
//            jsn.next = index;
//            cgTars(jsn);
//        }
//        startMoving();
//    },false);
//}
ydm.bycNav = function(jsn){
    var elems     = jsn.elems;
    var checkedCl = jsn.checkedCl;
    if(elems.length==0){
        return false;
    }
    var nowTab = null;
    var chapter = null;
    for(var x=0;x<elems.length;x++){
        chapter = elems[x];
        chapter.style.transition = "300ms";
        var tab = ydm(chapter).getByClass("tab")[0];
        tab.height = getElementSize(tab).height;
        var mdl = chapter.getByClass("mdl")[0];
        chapter.tab = tab;
        if(!tab||!mdl){
            continue;
        }
        tab.index = x;
        tab.state = "hide";
        tab.tarHeight = getElementSize(mdl).height + tab.height;
        addEvent(chapter,tab,mdl);
    }
    function addEvent(chapter,tab,mdl){
        ydm(tab).addEvent("click",function(){
            if(nowTab){
                nowTab.style.color = "";
            }
            if(checkedCl){
                this.style.color = checkedCl;
            }
            nowTab = this;
            if(this.state=="hide"){
                chapter.style.height = this.tarHeight + "px";
                this.state = "show";
                resetHeight(this.index,this.height);
            }else{
                chapter.style.height = this.height+"px";
                this.style.color = "rgb(0,0,0)";
                this.state = "hide";
            }
        },false);
    }
    function resetHeight(index,tabH){
        for(var x=0;x<elems.length;x++){
            if(x==index){
                continue;
            }
            elems[x].style.height = tabH + "px";
            if(elems[x].tab){
                elems[x].tab.state = "hide";
            }
        }
    }
}
ydm.switchMdl = function(jsn){
    var tabs = jsn.tabs;
    var mdls = jsn.mdls;
    if(!tabs||!mdls){
        return false;
    }
    if(tabs.length==0||mdls.length==0){
        return false;
    }
    if(tabs.length!=mdls.length){
        return false;
    }
    for(var i=0;i<tabs.length;i++){
        tabs[i].index = i;
        mdls[i].index = i;
        addEvent(tabs[i],mdls[i]);
    }
    var index = 0;
    function addEvent(tab,mdl){
        ydm.addEvent(tab,"click",function(){
            if(index === this.index){
                return false;
            }
            clearSelected();
            this.className += " switchTab_ed";
            mdls[index].style.display = "none";
            mdls[this.index].style.display = "block";
            index = this.index;
        });
    }
    function clearSelected(){
        for(var i=0;i<tabs.length;i++){
            var check = tabs[i].className.indexOf("switchTab_ed");
            if(check!=-1){
                var str = tabs[i].className;
                str = str.replace("switchTab_ed","");
                var str2 = str.trim();
                tabs[i].className = str2;
            }
        }
    }
}
ydm.switchMdl_run = function(){
    var elems = ydm(".switchMdl");
    if(elems.length === 0){
        return false;
    }
    var elem = null;
    for(var i=0; i < elems.length; i++){
        elem = elems[i];
        ydm(elem);
        var tabs = elem.getByClass("switchMdl_tab");
        var mdls = elem.getByClass("switchMdl_mdl");
        var jsn = {
            "tabs":tabs,
            "mdls":mdls
        };
        ydm.switchMdl(jsn);
    } 
}
ydm.running(ydm.switchMdl_run);

ydm.switchState = function(jsn){
    var elem    = jsn.elem;
    var cancel  = jsn.cancel;
    var checked = jsn.checked;
    var state   = jsn.state;
    if(!elem||!cancel||!checked){
        return false;
    }
    if(!state){
        state = "hide";
    }
    elem.onclick = function(){
        if(state=="hide"){
            cancel.style.display = "none";
            checked.style.display = "block";
            state = "show";
        }else{
            cancel.style.display = "block";
            checked.style.display = "none";
            state = "hide";
        }
    };
}
ydm.switchState_run = function(){
    var elems = ydm(".switchState");
    if(elems.length==0){
        return false;
    }
    var elem = null;
    var state = "";
    for(i=0;i<elems.length;i++){
        elem = elems[i];
        state = elem.getAttribute("state");
        if(!elem.state){
            elem.state = "hide";
        }
        var cancel  = ydm(elem).getByClass("cancel")[0];
        var checked = elem.getByClass("checked")[0];
        if(!cancel||!checked){
            return false;
        }
        var jsn = {
            "elem":elem,
            "cancel":cancel,
            "checked":checked,
            "state":state
        };
        ydm.switchState(jsn);
    } 
}
ydm.running(ydm.switchState_run);

ydm.ajax = function(jsn){
	var url     = jsn.url;
	var method  = jsn.method;
	var params  = jsn.params;
	var fnSucc  = jsn.fnSucc;
	var oAjax   = null;
	if(window.XMLHttpRequest){
	    oAjax = new XMLHttpRequest();
	}
	else{
	    oAjxa = new ActiveXObject("Microsoft.XMLHTTP");
	}
	oAjax.open(method,url,true);
	if(method=="post"){
	    oAjax.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
	    oAjax.send(parameters);
	}
	else{
	    oAjax.send();
	}
	oAjax.onreadystatechange=function(){ 
	    if(oAjax.readyState==4){
		    if(oAjax.status==200){
				if(fnSucc){
					fnSucc(oAjax.responseText);
				}else{
					return oAjax.responseText;
				}
			}
		}
	}
}