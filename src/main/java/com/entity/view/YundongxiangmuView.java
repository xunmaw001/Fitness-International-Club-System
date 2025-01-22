package com.entity.view;

import com.entity.YundongxiangmuEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 运动项目
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2022-03-28 13:58:14
 */
@TableName("yundongxiangmu")
public class YundongxiangmuView  extends YundongxiangmuEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public YundongxiangmuView(){
	}
 
 	public YundongxiangmuView(YundongxiangmuEntity yundongxiangmuEntity){
 	try {
			BeanUtils.copyProperties(this, yundongxiangmuEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
