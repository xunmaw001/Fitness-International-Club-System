package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ChangdileibieEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.ChangdileibieVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.ChangdileibieView;


/**
 * 场地类别
 *
 * @author 
 * @email 
 * @date 2022-03-28 13:58:14
 */
public interface ChangdileibieService extends IService<ChangdileibieEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ChangdileibieVO> selectListVO(Wrapper<ChangdileibieEntity> wrapper);
   	
   	ChangdileibieVO selectVO(@Param("ew") Wrapper<ChangdileibieEntity> wrapper);
   	
   	List<ChangdileibieView> selectListView(Wrapper<ChangdileibieEntity> wrapper);
   	
   	ChangdileibieView selectView(@Param("ew") Wrapper<ChangdileibieEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ChangdileibieEntity> wrapper);
   	

}

