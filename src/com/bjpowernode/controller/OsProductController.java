package com.bjpowernode.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bjpowernode.po.OsProduct;
import com.bjpowernode.po.OsProductDetail;
import com.bjpowernode.po.OsProductImage;
import com.bjpowernode.po.OsProductParameter;
import com.bjpowernode.service.OsProductService;
import com.bjpowernode.vo.HotCategoryVO;
import com.bjpowernode.vo.KindVO;

/**
 * 商品控制器
 * 
 * @author bjpowernode
 *
 */
@Controller
public class OsProductController {

	@Autowired
    OsProductService osProductService;

	// 首页热门分类
	@RequestMapping("/recommend/hot")
	public String recommendTop(HttpServletRequest request) {
		ArrayList<HotCategoryVO> categorys = osProductService.getHotCategory();
		request.setAttribute("categorys", categorys);
		return "/recommend/recommend_hot";
	}

	// 商品详情
	@RequestMapping("/detail/{productNumber}")
	public String productDetail(HttpServletRequest request, @PathVariable Long productNumber) {
		//信息
		OsProduct osProduct = osProductService.getProductDetil(productNumber);
		//商品详细介绍
		OsProductDetail detail = osProductService.getProductDetail(osProduct.getProductId());
		//图片
		List<OsProductImage> productImages = osProductService.getProductImages(osProduct.getProductId());
		//参数
		List<OsProductParameter> productParameter = osProductService.getProductParameter(osProduct.getProductId());
		//规格
		List<KindVO> kindVOs = osProductService.getProductKind(osProduct.getProductId());
		Map<String, Object> map =  osProductService.getProductSpecification(osProduct.getProductId());
		request.setAttribute("product",osProduct);
		request.setAttribute("detail",detail);
		request.setAttribute("productImages",productImages);
		request.setAttribute("productParameter",productParameter);
		request.setAttribute("kindVOs",kindVOs);
		request.setAttribute("productSpecifications", JSONObject.fromObject(map));
		return "/product/product_detail";
	}
}
