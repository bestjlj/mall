package com.bjpowernode.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bjpowernode.dao.OsCategoryMapper;
import com.bjpowernode.po.OsCategory;
import com.bjpowernode.vo.CategoryVO;

@Service
public class OsCategoryService {
	
	@Autowired
	private OsCategoryMapper osCategoryMapper;
	
	/*
	 * 首页导航栏商品列表
	 */
	public List<CategoryVO> getindexCategory() {
		List<CategoryVO> categorys = (List<CategoryVO>) osCategoryMapper.selectIndexCategory();
		return categorys;
	}

	public OsCategory getByCategoryId(Long categoryId) {
		OsCategory osCategory = osCategoryMapper.selectByPrimaryKey(categoryId);
		return osCategory;
	}

	// 根据类目ID查找子类目
	public List<OsCategory> listLowerCategories(Long categoryId) {
		List<OsCategory> list = osCategoryMapper.listLowerCategories(categoryId);
		return list;
	}

	// 根据类目ID查找上级类目列表
	public List<OsCategory> listUpperCategories(Long categoryId) {
		List<OsCategory> list = osCategoryMapper.listUpperCategories(categoryId);
		return list;
	}
}
