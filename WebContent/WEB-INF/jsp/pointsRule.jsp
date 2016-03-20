<%@ page pageEncoding="UTF-8"%>
<%@ include file="base.jsp" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="UTF-8" />
    <title>积分规则</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, user-scalable=no" />
    <meta name="format-detection" content="telephone=no"/>
    <link rel="stylesheet" href="${basePath }/static/css/basic.css">
    <link rel="stylesheet" href="${basePath }/static/css/public.css">
</head>
<body class="center bg14">
<section class="wp100">
    <div class="wp100 lh50 csPT_ bg19">
        <span class="m_wp50 txtC clEDA034 ftS18 bdBEDA034 home_tab">魅力值</span>
        <span class="m_wp50 txtC ftS18 home_tab">财富值</span>
    </div>
    <div class="wp100 bg19 mgT20 pdTB15 home_mod">
        <span class="w120 cl15 lh40 ftS18 pdL15 white_ico">等级分类</span>
        <div class="wp100 wp100_ pdLR20 mgT20">
            <span class="ftS18 txtC ftS18">个人魅力等级</span>
            <ul class="wp100_ bdEAB976 bdBEAB976_ lsN txtC mgT20">
                <li class="lh40_ bgFDD4A0 cl19 ftS16">
                    <span class="m_wp40 bdREAB976"><img src="${basePath }/static/images/integt1.png" class="w20 flN r5">级别Lv</span>
                    <span class="m_wp60"><img src="${basePath }/static/images/integt2.png" class="w17 flN r5">积分详情</span>
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp40 bdREAB976 clEAB976">1~3</span>
                    <span class="m_wp60">1000~6000</span>
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp40 bdREAB976 clEAB976">4~6</span>
                    <span class="m_wp60">1000~21000</span>
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp40 bdREAB976 clEAB976">7~9</span>
                    <span class="m_wp60">28000~45000</span>
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp40 bdREAB976 clEAB976">10~12</span>
                    <span class="m_wp60">55000~78000</span>
                </li>  
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp40 bdREAB976 clEAB976">13~15</span>
                    <span class="m_wp60">91000~120000</span>
                </li> 
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp40 bdREAB976 clEAB976">16~18</span>
                    <span class="m_wp60">136000~171000</span>
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp40 bdREAB976 clEAB976">19~21</span>
                    <span class="m_wp60">190000~231000</span>
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp40 bdREAB976 clEAB976">22~24</span>
                    <span class="m_wp60">253000~300000</span>
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp40 bdREAB976 clEAB976">25~27</span>
                    <span class="m_wp60">325000~378000</span>
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp40 bdREAB976 clEAB976">28~30</span>
                    <span class="m_wp60">406000~465000</span>
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp40 bdREAB976 clEAB976">31~33</span>
                    <span class="m_wp60">496000~561000</span>
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp40 bdREAB976 clEAB976">34~36</span>
                    <span class="m_wp60">595000~666000</span>
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp40 bdREAB976 clEAB976">37~39</span>
                    <span class="m_wp60">703000~780000</span>
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp40 bdREAB976 clEAB976">40~42</span>
                    <span class="m_wp60">820000~903000</span>
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp40 bdREAB976 clEAB976">43~45</span>
                    <span class="m_wp60">946000~1035000</span>
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp40 bdREAB976 clEAB976">46~48</span>
                    <span class="m_wp60">1081000~1176000</span>
                </li>
            </ul>
            <ul class="wp100_ bdEAB976 bdBEAB976_ lsN txtC mgT20">
                <li class="lh40_ bgFDD4A0 cl19 ftS16">
                    <span class="m_wp40 bdREAB976">等级</span>
                    <span class="m_wp60">等级图标</span>
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp40 bdREAB976 clEAB976">Lv1~Lv10</span>
                    <div class="m_wp60">
                        粉钻 例：
                        <img src="${basePath }/static/images/fenzuan.png" class="w50 t-3 flN">
                    </div>
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp40 bdREAB976 clEAB976">Lv11~Lv20</span>
                    <div class="m_wp60">
                        黄钻 例：
                        <img src="${basePath }/static/images/huangzuan.png" class="w50 t-3 flN">
                    </div>
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp40 bdREAB976 clEAB976">Lv21~Lv30</span>
                    <div class="m_wp60">
                        橙钻 例：
                        <img src="${basePath }/static/images/chengzuan.png" class="w50 t-3 flN">
                    </div>
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp40 bdREAB976 clEAB976">Lv31~Lv48</span>
                    <div class="m_wp60">
                        红钻 例：
                        <img src="${basePath }/static/images/hongzuan.png" class="w50 t-3 flN">
                    </div>
                </li>                                                
            </ul>   
            <span class="ftS18 txtC ftS18 mgT20">家庭魅力等级</span>  
            <ul class="wp100_ bdEAB976 bdBEAB976_ lsN txtC mgT20">
                <li class="pdTB5_ bgFDD4A0 cl19 ftS16">
                    <span class="m_wp30 bdREAB976 family_t"><img src="${basePath }/static/images/integt3.png" class="w20 flN t-3">家庭头衔</span>
                    <span class="m_wp20 bdREAB976 family_t"><img src="${basePath }/static/images/integt1.png" class="w20 flN">级别Lv</span>
                    <span class="m_wp50 family_t"><img src="${basePath }/static/images/integt5.png" class="w17 flN">积分详情</span>                    
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp30 bdREAB976 clEAB976">九品亭</span>
                    <span class="m_wp20 bdREAB976">1~3</span>
                    <span class="m_wp50">1500~9000</span>                    
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp30 bdREAB976 clEAB976">八品台</span>
                    <span class="m_wp20 bdREAB976">4~6</span>
                    <span class="m_wp50">15000~31500</span>                    
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp30 bdREAB976 clEAB976">七品庭</span>
                    <span class="m_wp20 bdREAB976">7~9</span>
                    <span class="m_wp50">42000~67500</span>                    
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp30 bdREAB976 clEAB976">六品榭</span>
                    <span class="m_wp20 bdREAB976">10~12</span>
                    <span class="m_wp50">82500~99000</span>                    
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp30 bdREAB976 clEAB976">五品堂</span>
                    <span class="m_wp20 bdREAB976">13~15</span>
                    <span class="m_wp50">136500~180000</span>                    
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp30 bdREAB976 clEAB976">四品园</span>
                    <span class="m_wp20 bdREAB976">16~18</span>
                    <span class="m_wp50">204000~256500</span>                    
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp30 bdREAB976 clEAB976">三品阁</span>
                    <span class="m_wp20 bdREAB976">19~21</span>
                    <span class="m_wp50">285000~346500</span>                    
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp30 bdREAB976 clEAB976">二品轩</span>
                    <span class="m_wp20 bdREAB976">22~24</span>
                    <span class="m_wp50">379500~450000</span>                    
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp30 bdREAB976 clEAB976">一品楼</span>
                    <span class="m_wp20 bdREAB976">25~27</span>
                    <span class="m_wp50">487500~567000</span>                    
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp30 bdREAB976 clEAB976">勋爵府</span>
                    <span class="m_wp20 bdREAB976">28~30</span>
                    <span class="m_wp50">609000~697500</span>                    
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp30 bdREAB976 clEAB976">男爵府</span>
                    <span class="m_wp20 bdREAB976">31~33</span>
                    <span class="m_wp50">744000~841500</span>                    
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp30 bdREAB976 clEAB976">子爵府</span>
                    <span class="m_wp20 bdREAB976">34~36</span>
                    <span class="m_wp50">892500~999000</span>                    
                </li>  
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp30 bdREAB976 clEAB976">伯爵府</span>
                    <span class="m_wp20 bdREAB976">37~39</span>
                    <span class="m_wp50">1054500~1170000</span>                    
                </li> 
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp30 bdREAB976 clEAB976">侯爵府</span>
                    <span class="m_wp20 bdREAB976">40~42</span>
                    <span class="m_wp50">1230000~1354500</span>                    
                </li> 
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp30 bdREAB976 clEAB976">公爵府</span>
                    <span class="m_wp20 bdREAB976">43~45</span>
                    <span class="m_wp50">1419000~1552500</span>                    
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp30 bdREAB976 clEAB976">王府</span>
                    <span class="m_wp20 bdREAB976">46~48</span>
                    <span class="m_wp50">1621500~1764000</span>                    
                </li>
            </ul>                    
        </div>
        <span class="w120 cl15 lh40 ftS18 pdL15 white_ico mgT30">累积规则</span>
        <div class="wp100 wp100_ pdLR20 mgT20">
            <span class="ftS18 txtC ftS18">一次性奖励</span>
            <ul class="wp100_ bdEAEAEA bdBEAEAEA_ lsN txtC mgT20">
                <li class="lh40_ bgFDD4A0 cl19 ftS16">
                    <span class="m_wp60">加分项目</span>
                    <span class="m_wp40">分值</span>
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp60">注册账号</span>
                    <span class="m_wp40 clEAB976"><img src="${basePath }/static/images/money.png" class="w15 flN r5">100</span>
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp60">绑定微博</span>
                    <span class="m_wp40 clEAB976"><img src="${basePath }/static/images/money.png" class="w15 flN r5">100</span>
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp60">绑定微信</span>
                    <span class="m_wp40 clEAB976"><img src="${basePath }/static/images/money.png" class="w15 flN r5">100</span>
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp60">绑定QQ</span>
                    <span class="m_wp40 clEAB976"><img src="${basePath }/static/images/money.png" class="w15 flN r5">100</span>
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp60">建立家庭</span>
                    <span class="m_wp40 clEAB976"><img src="${basePath }/static/images/money.png" class="w15 flN r5">200</span>
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp60">上传家庭头像</span>
                    <span class="m_wp40 clEAB976"><img src="${basePath }/static/images/money.png" class="w15 flN r5">50</span>
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp60">上传用户头像</span>
                    <span class="m_wp40 clEAB976"><img src="${basePath }/static/images/money.png" class="w15 flN r5">50</span>
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp60">选择城市</span>
                    <span class="m_wp40 clEAB976"><img src="${basePath }/static/images/money.png" class="w15 flN r5">50</span>
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp60">填写结婚纪念日</span>
                    <span class="m_wp40 clEAB976"><img src="${basePath }/static/images/money.png" class="w15 flN r5">50</span>
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp60">填写生日</span>
                    <span class="m_wp40 clEAB976"><img src="${basePath }/static/images/money.png" class="w15 flN r5">50</span>
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp60">添加宝宝</span>
                    <span class="m_wp40 clEAB976"><img src="${basePath }/static/images/money.png" class="w15 flN r5">50</span>
                </li>
            </ul>
            <div class="wp100_">
                <span class="ftS16 clEAB976 bdLEAB976 mgT20 pdL10">扣分规则</span>
                <p>
                    日常活动积分，如果该活动被取消(删除评价、取消点赞)，则对应的该用户产生的积分都会消除，财富值最大扣到为0
                </p>
            </div>
            <span class="ftS18 txtC ftS18 mgT20">常规性奖励</span>
            <ul class="wp100_ bdEAEAEA bdBEAEAEA_ lsN txtC mgT20">
                <li class="lh40_ bgFDD4A0 cl19 ftS16">
                    <span class="m_wp50">加分项目</span>
                    <span class="m_wp25">单次(分)</span>
                    <span class="m_wp25">上限次数</span>                    
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp50">发布微家帖子</span>
                    <span class="m_wp25 clEAB976"><img src="${basePath }/static/images/money.png" class="w15 flN r5">10</span>
                    <span class="m_wp25">10</span>  
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp50">帖子被评价</span>
                    <span class="m_wp25 clEAB976"><img src="${basePath }/static/images/money.png" class="w15 flN r5">2</span>
                    <span class="m_wp25">无</span>  
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp50">帖子被点赞</span>
                    <span class="m_wp25 clEAB976"><img src="${basePath }/static/images/money.png" class="w15 flN r5">2</span>
                    <span class="m_wp25">无</span>  
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp50">帖子被收藏</span>
                    <span class="m_wp25 clEAB976"><img src="${basePath }/static/images/money.png" class="w15 flN r5">5</span>
                    <span class="m_wp25">无</span>  
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp50">评价别人帖子</span>
                    <span class="m_wp25 clEAB976"><img src="${basePath }/static/images/money.png" class="w15 flN r5">2</span>
                    <span class="m_wp25">100</span>  
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp50">点赞别人帖子</span>
                    <span class="m_wp25 clEAB976"><img src="${basePath }/static/images/money.png" class="w15 flN r5">2</span>
                    <span class="m_wp25">100</span>  
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp50">收藏别人帖子</span>
                    <span class="m_wp25 clEAB976"><img src="${basePath }/static/images/money.png" class="w15 flN r5">5</span>
                    <span class="m_wp25">5</span>  
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp50">分享到微信微博</span>
                    <span class="m_wp25 clEAB976"><img src="${basePath }/static/images/money.png" class="w15 flN r5">25</span>
                    <span class="m_wp25">4</span>  
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp50">收到时光宝盒</span>
                    <span class="m_wp25 clEAB976"><img src="${basePath }/static/images/money.png" class="w15 flN r5">20</span>
                    <span class="m_wp25">2</span>  
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp50">添加关注家庭/用户</span>
                    <span class="m_wp25 clEAB976"><img src="${basePath }/static/images/money.png" class="w15 flN r5">5</span>
                    <span class="m_wp25">100</span>  
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp50">家庭/用户被关注</span>
                    <span class="m_wp25 clEAB976"><img src="${basePath }/static/images/money.png" class="w15 flN r5">5</span>
                    <span class="m_wp25">无</span>  
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp50">推荐建立家庭</span>
                    <span class="m_wp25 clEAB976"><img src="${basePath }/static/images/money.png" class="w15 flN r5">100</span>
                    <span class="m_wp25">100</span>  
                </li>                
            </ul>
            <div class="wp100_">
                <span class="ftS16 clEAB976 bdLEAB976 mgT20 pdL10">特别说明</span>
                <p>
                    魅力值和财富值是同步产生的，每日魅力值无上限。财富值上限2000分，相对抵用20元(一次性奖励积分值不计入财富值上限积分值范围)
                </p>
            </div>                        
        </div>    
    </div>
    <div class="wp100 hide bg19 mgT20 home_mod">
        <span class="w120 cl15 lh40 ftS18 pdL15 white_ico mgT15">累积规则</span>
        <div class="wp100 wp100_ pdLR20 mgT20">
            <span class="ftS18 txtC ftS18">一次性奖励</span>
            <ul class="wp100_ bdEAEAEA bdBEAEAEA_ lsN txtC mgT20">
                <li class="lh40_ bgFDD4A0 cl19 ftS16">
                    <span class="m_wp60">加分项目</span>
                    <span class="m_wp40">分值</span>
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp60">注册账号</span>
                    <span class="m_wp40 clEAB976"><img src="${basePath }/static/images/money.png" class="w15 flN r5">100</span>
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp60">绑定微博</span>
                    <span class="m_wp40 clEAB976"><img src="${basePath }/static/images/money.png" class="w15 flN r5">100</span>
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp60">绑定微信</span>
                    <span class="m_wp40 clEAB976"><img src="${basePath }/static/images/money.png" class="w15 flN r5">100</span>
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp60">绑定QQ</span>
                    <span class="m_wp40 clEAB976"><img src="${basePath }/static/images/money.png" class="w15 flN r5">100</span>
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp60">建立家庭</span>
                    <span class="m_wp40 clEAB976"><img src="${basePath }/static/images/money.png" class="w15 flN r5">200</span>
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp60">上传家庭头像</span>
                    <span class="m_wp40 clEAB976"><img src="${basePath }/static/images/money.png" class="w15 flN r5">50</span>
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp60">上传用户头像</span>
                    <span class="m_wp40 clEAB976"><img src="${basePath }/static/images/money.png" class="w15 flN r5">50</span>
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp60">选择城市</span>
                    <span class="m_wp40 clEAB976"><img src="${basePath }/static/images/money.png" class="w15 flN r5">50</span>
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp60">填写结婚纪念日</span>
                    <span class="m_wp40 clEAB976"><img src="${basePath }/static/images/money.png" class="w15 flN r5">50</span>
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp60">填写生日</span>
                    <span class="m_wp40 clEAB976"><img src="${basePath }/static/images/money.png" class="w15 flN r5">50</span>
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp60">添加宝宝</span>
                    <span class="m_wp40 clEAB976"><img src="${basePath }/static/images/money.png" class="w15 flN r5">50</span>
                </li>
            </ul>
            <div class="wp100_">
                <span class="ftS16 clEAB976 bdLEAB976 mgT20 pdL10">扣分规则</span>
                <p>
                    日常活动积分，如果该活动被取消(删除评价、取消点赞)，则对应的该用户产生的积分都会消除，财富值最大扣到为0
                </p>
            </div>
            <span class="ftS18 txtC ftS18 mgT20">常规性奖励</span>
            <ul class="wp100_ bdEAEAEA bdBEAEAEA_ lsN txtC mgT20">
                <li class="lh40_ bgFDD4A0 cl19 ftS16">
                    <span class="m_wp50">加分项目</span>
                    <span class="m_wp25">单次(分)</span>
                    <span class="m_wp25">上限次数</span>                    
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp50">发布微家帖子</span>
                    <span class="m_wp25 clEAB976"><img src="${basePath }/static/images/money.png" class="w15 flN r5">10</span>
                    <span class="m_wp25">10</span>  
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp50">帖子被评价</span>
                    <span class="m_wp25 clEAB976"><img src="${basePath }/static/images/money.png" class="w15 flN r5">2</span>
                    <span class="m_wp25">无</span>  
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp50">帖子被点赞</span>
                    <span class="m_wp25 clEAB976"><img src="${basePath }/static/images/money.png" class="w15 flN r5">2</span>
                    <span class="m_wp25">无</span>  
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp50">帖子被收藏</span>
                    <span class="m_wp25 clEAB976"><img src="${basePath }/static/images/money.png" class="w15 flN r5">5</span>
                    <span class="m_wp25">无</span>  
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp50">评价别人帖子</span>
                    <span class="m_wp25 clEAB976"><img src="${basePath }/static/images/money.png" class="w15 flN r5">2</span>
                    <span class="m_wp25">100</span>  
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp50">点赞别人帖子</span>
                    <span class="m_wp25 clEAB976"><img src="${basePath }/static/images/money.png" class="w15 flN r5">2</span>
                    <span class="m_wp25">100</span>  
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp50">收藏别人帖子</span>
                    <span class="m_wp25 clEAB976"><img src="${basePath }/static/images/money.png" class="w15 flN r5">5</span>
                    <span class="m_wp25">5</span>  
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp50">分享到微信微博</span>
                    <span class="m_wp25 clEAB976"><img src="${basePath }/static/images/money.png" class="w15 flN r5">25</span>
                    <span class="m_wp25">4</span>  
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp50">收到时光宝盒</span>
                    <span class="m_wp25 clEAB976"><img src="${basePath }/static/images/money.png" class="w15 flN r5">20</span>
                    <span class="m_wp25">2</span>  
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp50">添加关注家庭/用户</span>
                    <span class="m_wp25 clEAB976"><img src="${basePath }/static/images/money.png" class="w15 flN r5">5</span>
                    <span class="m_wp25">100</span>  
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp50">家庭/用户被关注</span>
                    <span class="m_wp25 clEAB976"><img src="${basePath }/static/images/money.png" class="w15 flN r5">5</span>
                    <span class="m_wp25">无</span>  
                </li>
                <li class="lh40_ cl6 ftS16">
                    <span class="m_wp50">推荐建立家庭</span>
                    <span class="m_wp25 clEAB976"><img src="${basePath }/static/images/money.png" class="w15 flN r5">100</span>
                    <span class="m_wp25">100</span>  
                </li>                
            </ul>
            <div class="wp100_">
                <span class="ftS16 clEAB976 bdLEAB976 mgT20 pdL10">特别说明</span>
                <p>
                    魅力值和财富值是同步产生的，每日魅力值无上限。财富值上限2000分，相对抵用20元(一次性奖励积分值不计入财富值上限积分值范围)
                </p>
            </div>                        
        </div>    
    </div>    
</section>

<script src="${basePath }/static/js/basic.js" ></script>
<script src="${basePath }/static/js/script.js" ></script>
</body>
</html>
