
function Switching(){
    var h_tab = ydm(".home_tab");
    var h_mod = ydm(".home_mod");
    if(!h_tab||!h_mod){
        return false;
    }
    for(var x=0;x<h_tab.length;x++){
        h_tab[x].index = x;
        ydm.addEvent(h_tab[x],"click",handler); 
    }
    function handler(){
        reset();
        this.style.color = "#EDA034";
        this.style.borderBottom = "1px solid #EDA034";            
        h_mod[this.index].style.display = "block";
    }
    function reset(){
        for(var x=0;x<h_tab.length;x++){
            h_tab[x].index = x;
            h_tab[x].style.color = "#333";
            h_tab[x].style.border = "0px";
            h_mod[x].style.display = "none";              
        }       
    } 
}
ydm.running(Switching);

function familyTitle(){
    var family_t = ydm(".family_t");
    if(!family_t[0]){
        return false;
    }
    var ftHeight = ydm.getElementSize(family_t[1]).height;
    for(var x=0;x<family_t.length;x++){
       family_t[x].style.height = ftHeight + "px";
    }    
}
ydm.running(familyTitle);



function formTab(){
    var elems = ydm(".asdfg");
    var mds = ydm(".w_mod");
    if(elems.length === 0){
        return false;
    }
    for(var i = 0; i < elems.length; i++){
        loadFunc(elems[i],mds);
    }
    function loadFunc(elem,mds){
        ydm(elem);
        var w_tab  = elem.getByClass("w_tab")[0],      
            addVal = elem.getByClass("addVal")[0],
            addValCld = elem.getByClass("addValCld")[0],            
            w_mod  = elem.getByClass("w_mod")[0],
            c_box  = elem.getByClass("c_box"),
            c_boxCld  = elem.getByClass("c_boxCld"),            
            Inputcb = elem.getByClass("Inputcb"),
            InputCld = elem.getByClass("InputCld"),               
            c_gou   = elem.getByClass("c_gou"),
            c_gouCld   = elem.getByClass("c_gouCld"),            
            c_Text  = elem.getByClass("c_Text"); 
            c_TextCld  = elem.getByClass("c_TextCld");             
        if(!w_tab||!w_mod){
            return false;
        }
        var initTxt = addVal.innerHTML;
        ydm.addEvent(w_tab,"click",function(){
            if(w_mod.show){
                w_mod.style.display = "none";
                w_mod.show = false;                
            }else{
                w_mod.style.display = "block";
                w_mod.show = true;                
            }
            for(var x=0;x<mds.length;x++){
                if(w_mod !== mds[x] ){
                    mds[x].style.display = "none";
                    mds[x].show = false; 
                }
            }
        });
        for(var x = 0; x < c_box.length; x++){
            c_box[x].index = x;
            onloadFun(c_box[x]);
        }
        function onloadFun(cBox){
            ydm.addEvent(cBox,"click",function(){
                if(!selectedCld){
                    for(var x=0; x < Inputcb.length; x++){
                        Inputcb[x].checked = false;
                        c_gou[x].style.display = "none";
                    }
                    Inputcb[cBox.index].checked = true;
                    c_gou[cBox.index].style.display = "block";
                    addVal.innerHTML = "";
                    var selected = false;
                    for(var x=0; x < Inputcb.length; x++){
                        if(Inputcb[x].checked){
                            selected = true;
                           addVal.innerHTML += " " + c_Text[x].innerHTML;
                        }
                    }
                    if(!selected){
                        addVal.innerHTML = initTxt;
                    }                        
                }
            }); 
        }
        for(var x = 0; x < c_boxCld.length; x++){
            c_boxCld[x].index = x;
            onloadPlug(c_boxCld[x]);
        }
        var selectedCld;
        function onloadPlug(cBox){
            ydm.addEvent(cBox,"click",function(){
                if(Inputcb[Inputcb.length-1].checked){
                    if(InputCld[cBox.index].checked){
                        InputCld[cBox.index].checked = false;
                        c_gouCld[cBox.index].style.display = "none";
                    }else{
                        InputCld[cBox.index].checked = true;
                        c_gouCld[cBox.index].style.display = "block";
                    }
                    addValCld.innerHTML = "";
                    selectedCld = false;
                    for(var x=0; x < InputCld.length; x++){
                        if(InputCld[x].checked){
                           selectedCld = true;
                           addValCld.innerHTML += " " + c_TextCld[x].innerHTML;
                        }
                    }                      
                }
            }); 
        }
    }
}
ydm.running(formTab);

function LabelColor(){
    var elems = ydm(".LabelEle");
    if(elems.length === 0){
        return false;
    }
    for(var i = 0; i < elems.length; i++){
        loadFunc(elems[i]);
    }
    function loadFunc(elem){
        ydm(elem);
        var tagCb  = elem.getByClass("tagCb"),      
            tagList = elem.getByClass("tagList");
        for(var x = 0; x < tagList.length; x++){
            tagList[x].index = x;
            onloadFun(tagList[x]);
        }
        function onloadFun(cBox){
            ydm.addEvent(cBox,"click",function(){
                if(tagCb[cBox.index].checked){
                    tagCb[cBox.index].checked = false; 
                    cBox.style.backgroundColor = "#A9ABAA";    
                }else{
                    tagCb[cBox.index].checked = true;
                    cBox.style.backgroundColor = "#F5AB40";           
                }
            }); 
        }    
    }
}
ydm.running(LabelColor);

function ClickPlay(){
    var addTags = ydm(".addTags")[0];
    var divLayer = ydm(".divLayer")[0];
    var closed = ydm(".closed")[0];   
    var tags = ydm(".tags")[0]; 
    var saveBtn = ydm(".saveBtn")[0]; 
    ydm.addEvent(addTags,"click",function(){
        divLayer.style.display = "block";
        tags.style.display = "block";

    });
    ydm.addEvent(closed,"click",function(){
        divLayer.style.display = "none";
        tags.style.display = "none";
    });
    ydm.addEvent(saveBtn,"click",function(){
        divLayer.style.display = "none";
        tags.style.display = "none";
    }); 
     

}
ydm.running(ClickPlay);