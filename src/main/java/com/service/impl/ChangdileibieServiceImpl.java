package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.ChangdileibieDao;
import com.entity.ChangdileibieEntity;
import com.service.ChangdileibieService;
import com.entity.vo.ChangdileibieVO;
import com.entity.view.ChangdileibieView;

@Service("changdileibieService")
public class ChangdileibieServiceImpl extends ServiceImpl<ChangdileibieDao, ChangdileibieEntity> implements ChangdileibieService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ChangdileibieEntity> page = this.selectPage(
                new Query<ChangdileibieEntity>(params).getPage(),
                new EntityWrapper<ChangdileibieEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ChangdileibieEntity> wrapper) {
		  Page<ChangdileibieView> page =new Query<ChangdileibieView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<ChangdileibieVO> selectListVO(Wrapper<ChangdileibieEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public ChangdileibieVO selectVO(Wrapper<ChangdileibieEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<ChangdileibieView> selectListView(Wrapper<ChangdileibieEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ChangdileibieView selectView(Wrapper<ChangdileibieEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
