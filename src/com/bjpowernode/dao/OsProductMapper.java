package com.bjpowernode.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import org.apache.ibatis.annotations.Param;

import com.bjpowernode.po.OsOrderProduct;
import com.bjpowernode.po.OsProduct;
import com.bjpowernode.vo.CategoryVO;
import com.bjpowernode.vo.HotCategoryVO;

public interface OsProductMapper {
    int deleteByPrimaryKey(Long productId);

    int insert(OsProduct record);

    int insertSelective(OsProduct record);

    OsProduct selectByPrimaryKey(Long productId);

    int updateByPrimaryKeySelective(OsProduct record);

    int updateByPrimaryKey(OsProduct record);
    
    List<OsProduct> getHotProduct(CategoryVO vo);
    
    ArrayList<HotCategoryVO> getAllCategory();
    
    OsProduct selectByProductNumber(Long productNumber);

    Long selectProductNumberByProductId(Long productId);

    String selectNameByProductId(Long productId);

    String selectPicImgByProductId(Long productId);

    OsProduct getProductBySpecNumber(Long productSpecNumber);

    List<OsProduct> listByPage(@Param("categoryIds" +
            "") List<String> categoryIds);
    List<OsProduct> selectAll();
}