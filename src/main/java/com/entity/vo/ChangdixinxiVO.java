package com.entity.vo;

import com.entity.ChangdixinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
 

/**
 * 场地信息
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2022-03-28 13:58:14
 */
public class ChangdixinxiVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 场地类别
	 */
	
	private String changdileibie;
		
	/**
	 * 租赁价格
	 */
	
	private Integer zulinjiage;
		
	/**
	 * 联系电话
	 */
	
	private String lianxidianhua;
		
	/**
	 * 场地大小
	 */
	
	private String changdidaxiao;
		
	/**
	 * 容纳人数
	 */
	
	private Integer rongnarenshu;
		
	/**
	 * 场地详情
	 */
	
	private String changdixiangqing;
		
	/**
	 * 场地图片
	 */
	
	private String changditupian;
				
	
	/**
	 * 设置：场地类别
	 */
	 
	public void setChangdileibie(String changdileibie) {
		this.changdileibie = changdileibie;
	}
	
	/**
	 * 获取：场地类别
	 */
	public String getChangdileibie() {
		return changdileibie;
	}
				
	
	/**
	 * 设置：租赁价格
	 */
	 
	public void setZulinjiage(Integer zulinjiage) {
		this.zulinjiage = zulinjiage;
	}
	
	/**
	 * 获取：租赁价格
	 */
	public Integer getZulinjiage() {
		return zulinjiage;
	}
				
	
	/**
	 * 设置：联系电话
	 */
	 
	public void setLianxidianhua(String lianxidianhua) {
		this.lianxidianhua = lianxidianhua;
	}
	
	/**
	 * 获取：联系电话
	 */
	public String getLianxidianhua() {
		return lianxidianhua;
	}
				
	
	/**
	 * 设置：场地大小
	 */
	 
	public void setChangdidaxiao(String changdidaxiao) {
		this.changdidaxiao = changdidaxiao;
	}
	
	/**
	 * 获取：场地大小
	 */
	public String getChangdidaxiao() {
		return changdidaxiao;
	}
				
	
	/**
	 * 设置：容纳人数
	 */
	 
	public void setRongnarenshu(Integer rongnarenshu) {
		this.rongnarenshu = rongnarenshu;
	}
	
	/**
	 * 获取：容纳人数
	 */
	public Integer getRongnarenshu() {
		return rongnarenshu;
	}
				
	
	/**
	 * 设置：场地详情
	 */
	 
	public void setChangdixiangqing(String changdixiangqing) {
		this.changdixiangqing = changdixiangqing;
	}
	
	/**
	 * 获取：场地详情
	 */
	public String getChangdixiangqing() {
		return changdixiangqing;
	}
				
	
	/**
	 * 设置：场地图片
	 */
	 
	public void setChangditupian(String changditupian) {
		this.changditupian = changditupian;
	}
	
	/**
	 * 获取：场地图片
	 */
	public String getChangditupian() {
		return changditupian;
	}
			
}
