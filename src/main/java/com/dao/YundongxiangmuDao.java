package com.dao;

import com.entity.YundongxiangmuEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.YundongxiangmuVO;
import com.entity.view.YundongxiangmuView;


/**
 * 运动项目
 * 
 * @author 
 * @email 
 * @date 2022-03-28 13:58:14
 */
public interface YundongxiangmuDao extends BaseMapper<YundongxiangmuEntity> {
	
	List<YundongxiangmuVO> selectListVO(@Param("ew") Wrapper<YundongxiangmuEntity> wrapper);
	
	YundongxiangmuVO selectVO(@Param("ew") Wrapper<YundongxiangmuEntity> wrapper);
	
	List<YundongxiangmuView> selectListView(@Param("ew") Wrapper<YundongxiangmuEntity> wrapper);

	List<YundongxiangmuView> selectListView(Pagination page,@Param("ew") Wrapper<YundongxiangmuEntity> wrapper);
	
	YundongxiangmuView selectView(@Param("ew") Wrapper<YundongxiangmuEntity> wrapper);
	

}
