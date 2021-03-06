<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%@ include file="/WEB-INF/layouts/base.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>动力商城</title>
<link rel="stylesheet" href="${ctxsta}/os/css/goods-detail.css">
</head>
<body>

<c:if test="${not empty product}"> 
  <!--     分类导航栏 begin       -->
  <div class="breadcrumbs">
    <div class="container-fluid"><a href='${ctx}/index'>首页</a>
      <%-- <c:forEach items="${upperCategories}" var="upperCategory"><span class="sep">&gt;</span><a href="${ctx}/list?categoryId=${upperCategory.categoryId}">${upperCategory.name}</a></c:forEach> --%>
      <span class="sep">&gt;</span><a href="${ctx}/detail/${product.productNumber}">${product.name}</a> </div>
  </div>
  <!--     分类导航栏 end       --> 
  
  <!-- 商品详情 begin -->
  <div class="goods-detail"> 
    <!-- 商品简介begin-->
    <div class="goods-detail-info  clearfix J_goodsDetail">
      <div class="container-fluid">
        <div class="row">
          <div class="span13  J_mi_goodsPic_block goods-detail-left-info">
            <div class="goods-pic-box" id="J_mi_goodsPicBox">
              <div class="goods-big-pic J_bigPicBlock"> <img class="J_goodsBigPic" id="J_BigPic"></div>
              <div class="goods-pic-loading">
                <div class="loader loader-gray"></div>
              </div>
              <div class="goods-small-pic clearfix">
                <ul id="goodsPicList">
                  <c:forEach items="${productImages}" var="productImage">
                    <li> <img src="${ctximg}/${productImage.picImg}" alt="${product.name}" title="${product.name}"> </li>
                  </c:forEach>
                </ul>
              </div>
            </div>
          </div>
          <div class="span7 goods-info-rightbox">
            <div class="goods-info-leftborder"></div>
            <dl class="goods-info-box ">
              <dt class="goods-info-head">
                <dl id="J_goodsInfoBlock">
                  <dt id="goodsName" class="goods-name"> ${product.name} </dt>
                  <dd class="goods-subtitle">
                    <p> ${product.introduce} </p>
                  </dd>
                  <dd class="goods-info-head-tip">
                    <ul>
                      <%-- <c:if test="${not empty product.labelName}">
                        <li class="others"><i>${product.labelName}</i> </li>
                      </c:if> --%>
                    </ul>
                  </dd>
                  <dd class="goods-info-head-price clearfix"> <b class="J_mi_goodsPrice sys_item_price">${product.showPrice}</b> <i>&nbsp;元</i> </dd>
                  <c:forEach items="${kindVOs}" var="kindVO">
                    <dd class="goods-info-head-size clearfix sys_item_specpara"  data-sid="${kindVO.specificationId}"> <span class="style-label">${kindVO.name}：</span>
                      <ul class="clearfix">
                        <c:forEach items="${kindVO.kindAttributes}" var="kindAttribute">
                          <li data-aid="${kindAttribute.specAttrId}"><a href="javascript:;" class="item goodsStyle" title="${kindAttribute.name}">${kindAttribute.name}</a></li>
                        </c:forEach>
                      </ul>
                    </dd>
                  </c:forEach>
                  <dd class="goods-info-head-cart" id="goodsDetailBtnBox"> <a href="javascript:void(0)" onclick="add_cart(this)" id="goodsDetailAddCartBtn" class="btn btn-primary goods-add-cart-btn" data-product-spec-number=""> <i class="glyphicon glyphicon-shopping-cart"></i>加入购物车 </a> <a id="goodsDetailCollectBtn" data-pid="${product.productNumber}" data-isfavorite="false" class=" btn btn-gray  goods-collect-btn" href="javascript:void(0)" onclick="add_favorite(this);"> <i class="glyphicon glyphicon-heart-empty"></i>&nbsp;喜欢&nbsp; </a> </dd>
                  <dd class="goods-info-head-cart" id="goodsDetailBtnBoxForInform" style="display: none;"> <a href="" class="btn  btn-gray goods-over-btn" data-stat-id="01b1dbea83f08143"> <i class="iconfont "></i>到货通知 </a></dd>
                  <dd class="goods-info-head-userfaq">
                  </dd>
                </dl>
              </dt>
            </dl>
          </div>
        </div>
      </div>
    </div>
    <!-- 商品简介end-->
    <div class="full-screen-border"></div>
    <!-- 商品详情导航栏 begin -->
    <div class="goods-detail-nav" id="goodsDetail">
      <div class="container-fluid">
        <ul class="detail-list J_detailNav J_originNav" >
          <li class='current detail-nav'> <a href="#goodsDesc" data-index='0' class='J_scrollHref'>详情描述</a> </li>
          <li class='detail-nav'> <a href="#goodsParam" data-index='1' class='J_scrollHref'>规格参数</a> </li>
        </ul>
      </div>
    </div>
    <!-- 商品详情导航栏 begin --> 
    
    <!-- 商品详情介绍 begin -->
    <div class="goods-detail-desc J_itemBox" id="goodsDesc" style="display: block;">
      <div class="container">
        <div class="shape-container">
          <p class="detailBlock"> ${detail.description} </p>
        </div>
      </div>
    </div>
    <!-- 商品详情介绍 begin  --> 
    
    <!-- 商品详情参数 begin -->
    <div class="goods-detail-nav-name-block J_itemBox" id="goodsParam">
      <div class="container-fluid main-block">
        <div class="border-line"></div>
        <h2 class="nav-name">规格参数</h2>
      </div>
    </div>
    <!--规格-->
    <div class="goods-detail-param  J_itemBox">
      <div class="container-fluid">
        <ul class='param-list'>
          <li class='goods-img'> <img alt="${pruduct.name}" src="${ctximg}/${product.picImg}" title="${pruduct.name}"> </li>
          <li class="goods-tech-spec">
            <dl>
              <dd>
                <ul>
                  <c:forEach items="${productParameter}" var="productParameter">
                    <li> ${productParameter.name}：${productParameter.value} </li>
                  </c:forEach>
                </ul>
              </dd>
            </dl>
          </li>
        </ul>
      </div>
    </div>
    <!-- 商品详情参数 begin --> 
    <!-- 商品详情售后服务 begin -->
    <div class="goods-detail-nav-name-block " id="goodsService">
      <div class="container-fluid main-block">
        <div class="border-line"></div>
        <h2 class="nav-name">售后服务与退换货流程</h2>
      </div>
    </div>
    <!--售后服务与退换货流程-->
    <div class="goods-detail-service-block">
      <div class="container-fluid">
        <div class="row">
          <div class="span8 service-day-img"> <img src="${ctxsta}/os/images/timg.jpg" alt="售后服务与退换货流程"> </div>
          <div class="span11 service-detail-block">
            <div class="service-detail-content" id="J_serviceCon">
              <h3 class="title"></h3>
              <h4 class="sub-title"><span class="tit">A</span>phone飞车: </h4>
              <p class="content"> 1）产品自签收后7天内无理由退货，14日内保修<br>
                2）以下情况不能申请售后服务：<br>
                a. 未经授权的修理、改装、改动、碰撞、误用、进水、及不正确的使用所造成的问题。<br>
                b. 商品的外包装、附件、说明书不完整；发票缺失或涂改。<br>
                c. 产品已使用（产品自身质量问题除外）。<br>
                d. 其他不符合售后流程的情况。<br>
                3）产品自身质量问题范围：<br>
                a. 汽车不正常工作且不存在电量低、电池松动或接触点未连好、电池没电、电子部件损坏、开关键处于关的情况。<br>
                b. 电池不能充电且不存在电池连接点接触不好的情况。<br>
                c. 玩用时间短且不存在电池能量低、能量耗尽的情况。<br>
                d. 低速度且不存在电池没电、玩用的地面不平的情况。<br>
                e. wifi链接失败且不存在电量不足、超出遥控范围的情况。<br>
                3）小米之家暂不办理自提和退换货业务，现阶段仅提供网上办理及电话办理两种方式<br>
              </p>
              <h4 class="sub-title"><span class="tit">A</span>米兔积木机器人: </h4>
              <p class="content"> 1.产品自签收后7天内无理由退货；7天内质量问题，可以退货、换货；15日内产品质量问题可以换货或者维修；1年内，主控、电机、适配器产品质量问题可以维修，积木件不保。<br>
                2.以下情况不能申请售后服务：<br>
                a. 未经授权的修理、改装、改动、碰撞、误用、进水、及不正确的使用所造成的问题;<br>
                b. 已超过三包有效期；<br>
                c. 因不可抗力造成的损坏；<br>
                d. 不符合《产品性能故障表》所列性能故障的情况；<br>
                e. 因人为原因导致本产品及其配件产生《产品性能故障表》所列性能故障。<br>
                3.积木件超出15天，1年内：自您签收日起12个月内，积木件缺失、损坏可享受一次免费补换件的机会，补换件数量不超过10个。请联系北京爱其科技有限公司服务热线：400-012-6281。<br>
                4.小米之家暂不办理自提和退换货业务，现阶段仅提供网上办理及电话办理两种方式。<br>
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!--售后服务与退换货流程--> 
    <!-- 商品详情售后服务 end -->
    
    <div id="J_alsoBuyWrap"  style='margin-top:100px;'></div>
    <div id="J_recentGoods"  style='margin-top:100px;padding-bottom:130px;'></div>
  </div>
  <!-- 商品详情 end --> 
  
  <!-- 跟随 导航 begin -->
  <div class="goods-sub-bar  goods-sub-bar-play" id="goodsSubBar" style="top: 0px;display: none;">
    <div class="container-fluid">
      <div class="row">
        <div class="span4">
          <dl class="goods-sub-bar-info clearfix">
            <dt> <img alt="${pruduct.name}" src="${ctximg}/${product.picImg}"> </dt>
            <dd> <strong>${product.name}</strong>
              <p> <em><span class="J_mi_goodsPrice">${product.showPrice}</span>元</em> <del><span class="J_mi_marketPrice">79元</span></del> </p>
            </dd>
          </dl>
        </div>
        <div class="span12">
          <div class="goods-desc-menu" id="goodsSubMenu">
            <ul class="detail-list J_pro_related_btns  J_detailNav">
              <li class="current"> <a href="#goodsDesc"  data-index="1"  class="J_scrollHref">详情描述</a> </li>
              <li> <a href="#goodsParam" data-index="1" class="J_scrollHref">规格参数</a> </li>
            </ul>
          </div>
        </div>
        <div class="span4">
          <div class="fr" id="goodsSubBarBtnBox"> <a href="" class="btn btn-primary goods-add-cart-btn" id="goodsSubBarAddCartBtn" data-disabled="false" data-product-spec-number=""> <i class="glyphicon glyphicon-shopping-cart"></i>加入购物车</a> </div>
        </div>
      </div>
    </div>
  </div>
  <!-- 跟随 导航 end --> 
</c:if>
<c:if test="${empty product}">
  <div class="container-fluid">
    <div class="xm-box ">
      <div class="bd">
        <div class="shop-global-error">
          <h2>你所查找的商品不存在</h2>
          <p class="shop-global-error-tips"></p>
          <p class="shop-global-error-btn"> <a href="${ctx }/index" class="btn btn-primary">去首页</a> <a href="javascript:;" onclick="history.go(-1);" class="btn btn-line-gray">返回上一页</a> </p>
        </div>
      </div>
    </div>
  </div>
</c:if>
<myfooter> 
  <!-- layer javascript --> 
  <script src="${ctxsta}/common/layer/layer.js"></script> 
  <script src="${ctxsta}/os/js/goodsDetail.js"></script> 
  <script>
//价格json
var sys_item=${productSpecifications};
var default_price=${product.showPrice};
var productNumber=${product.productNumber};
var productId=${product.productId};
console.log(sys_item);
// 判断是否收藏商品
$(function(){
	$.ajax({
		type : 'get',
		dataType : 'json',
		url : baselocation + '/favorite/' + productNumber,
		success : function(result) {
			if (result.success == true) {
				if(result.data != null) {
					$('#goodsDetailCollectBtn').attr('data-isfavorite',true);
					$('#goodsDetailCollectBtn i').addClass("red");
				}else {
					$('#goodsDetailCollectBtn').attr('data-isfavorite',false);
					$('#goodsDetailCollectBtn i').removeClass("red");
				}
			} else {
				$('#goodsDetailCollectBtn').attr('data-isfavorite',false);
				$('#goodsDetailCollectBtn i').removeClass("red");
			}
		}
	})	
})
// 收藏商品
function add_favorite(obj) {
	var productNumber = $(obj).attr("data-pid");
	var result = Boolean($(obj).attr('data-isfavorite'));
	if(result) {
		$.ajax({
			type : 'delete',
			dataType : 'json',
			url : baselocation + '/favorite/' + productNumber,
			success : function(result) {
				if (result.success == true) {
					$('#goodsDetailCollectBtn i').toggleClass("red");
				} else {
					layer.alert(result.message, {
						icon : 2
					});
				}
			}
		})			
	}else {
		$.ajax({
			type : 'post',
			dataType : 'json',
			url : baselocation + '/favorite/' + productNumber,
			success : function(result) {
				if (result.success == true) {
					$('#goodsDetailCollectBtn i').toggleClass("red");
				} else {
					layer.alert(result.message, {
						icon : 2
					});
				}
			}
		})			
	}
}
</script> 
</myfooter>
</body>
</html>