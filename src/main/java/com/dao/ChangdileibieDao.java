package com.dao;

import com.entity.ChangdileibieEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ChangdileibieVO;
import com.entity.view.ChangdileibieView;


/**
 * 场地类别
 * 
 * @author 
 * @email 
 * @date 2022-03-28 13:58:14
 */
public interface ChangdileibieDao extends BaseMapper<ChangdileibieEntity> {
	
	List<ChangdileibieVO> selectListVO(@Param("ew") Wrapper<ChangdileibieEntity> wrapper);
	
	ChangdileibieVO selectVO(@Param("ew") Wrapper<ChangdileibieEntity> wrapper);
	
	List<ChangdileibieView> selectListView(@Param("ew") Wrapper<ChangdileibieEntity> wrapper);

	List<ChangdileibieView> selectListView(Pagination page,@Param("ew") Wrapper<ChangdileibieEntity> wrapper);
	
	ChangdileibieView selectView(@Param("ew") Wrapper<ChangdileibieEntity> wrapper);
	

}
