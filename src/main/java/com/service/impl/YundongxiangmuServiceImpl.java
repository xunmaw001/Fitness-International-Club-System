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


import com.dao.YundongxiangmuDao;
import com.entity.YundongxiangmuEntity;
import com.service.YundongxiangmuService;
import com.entity.vo.YundongxiangmuVO;
import com.entity.view.YundongxiangmuView;

@Service("yundongxiangmuService")
public class YundongxiangmuServiceImpl extends ServiceImpl<YundongxiangmuDao, YundongxiangmuEntity> implements YundongxiangmuService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<YundongxiangmuEntity> page = this.selectPage(
                new Query<YundongxiangmuEntity>(params).getPage(),
                new EntityWrapper<YundongxiangmuEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<YundongxiangmuEntity> wrapper) {
		  Page<YundongxiangmuView> page =new Query<YundongxiangmuView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<YundongxiangmuVO> selectListVO(Wrapper<YundongxiangmuEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public YundongxiangmuVO selectVO(Wrapper<YundongxiangmuEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<YundongxiangmuView> selectListView(Wrapper<YundongxiangmuEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public YundongxiangmuView selectView(Wrapper<YundongxiangmuEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
