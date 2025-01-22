package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.YundongxiangmuEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.YundongxiangmuVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.YundongxiangmuView;


/**
 * 运动项目
 *
 * @author 
 * @email 
 * @date 2022-03-28 13:58:14
 */
public interface YundongxiangmuService extends IService<YundongxiangmuEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<YundongxiangmuVO> selectListVO(Wrapper<YundongxiangmuEntity> wrapper);
   	
   	YundongxiangmuVO selectVO(@Param("ew") Wrapper<YundongxiangmuEntity> wrapper);
   	
   	List<YundongxiangmuView> selectListView(Wrapper<YundongxiangmuEntity> wrapper);
   	
   	YundongxiangmuView selectView(@Param("ew") Wrapper<YundongxiangmuEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<YundongxiangmuEntity> wrapper);
   	

}

