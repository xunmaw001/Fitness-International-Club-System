package com.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

import com.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.annotation.IgnoreAuth;

import com.entity.YundongxiangmuEntity;
import com.entity.view.YundongxiangmuView;

import com.service.YundongxiangmuService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MD5Util;
import com.utils.MPUtil;
import com.utils.CommonUtil;
import java.io.InputStream;
import org.springframework.web.multipart.MultipartFile;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookFactory;

/**
 * 运动项目
 * 后端接口
 * @author 
 * @email 
 * @date 2022-03-28 13:58:14
 */
@RestController
@RequestMapping("/yundongxiangmu")
public class YundongxiangmuController {
    @Autowired
    private YundongxiangmuService yundongxiangmuService;



    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,YundongxiangmuEntity yundongxiangmu, 
		HttpServletRequest request){

        EntityWrapper<YundongxiangmuEntity> ew = new EntityWrapper<YundongxiangmuEntity>();
		PageUtils page = yundongxiangmuService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, yundongxiangmu), params), params));
        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,YundongxiangmuEntity yundongxiangmu, 
		HttpServletRequest request){
        EntityWrapper<YundongxiangmuEntity> ew = new EntityWrapper<YundongxiangmuEntity>();
		PageUtils page = yundongxiangmuService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, yundongxiangmu), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( YundongxiangmuEntity yundongxiangmu){
       	EntityWrapper<YundongxiangmuEntity> ew = new EntityWrapper<YundongxiangmuEntity>();
      	ew.allEq(MPUtil.allEQMapPre( yundongxiangmu, "yundongxiangmu")); 
        return R.ok().put("data", yundongxiangmuService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(YundongxiangmuEntity yundongxiangmu){
        EntityWrapper< YundongxiangmuEntity> ew = new EntityWrapper< YundongxiangmuEntity>();
 		ew.allEq(MPUtil.allEQMapPre( yundongxiangmu, "yundongxiangmu")); 
		YundongxiangmuView yundongxiangmuView =  yundongxiangmuService.selectView(ew);
		return R.ok("查询运动项目成功").put("data", yundongxiangmuView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        YundongxiangmuEntity yundongxiangmu = yundongxiangmuService.selectById(id);
        return R.ok().put("data", yundongxiangmu);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        YundongxiangmuEntity yundongxiangmu = yundongxiangmuService.selectById(id);
        return R.ok().put("data", yundongxiangmu);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody YundongxiangmuEntity yundongxiangmu, HttpServletRequest request){
    	yundongxiangmu.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(yundongxiangmu);

        yundongxiangmuService.insert(yundongxiangmu);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody YundongxiangmuEntity yundongxiangmu, HttpServletRequest request){
    	yundongxiangmu.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(yundongxiangmu);

        yundongxiangmuService.insert(yundongxiangmu);
        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    public R update(@RequestBody YundongxiangmuEntity yundongxiangmu, HttpServletRequest request){
        //ValidatorUtils.validateEntity(yundongxiangmu);
        yundongxiangmuService.updateById(yundongxiangmu);//全部更新
        return R.ok();
    }
    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        yundongxiangmuService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
    /**
     * 提醒接口
     */
	@RequestMapping("/remind/{columnName}/{type}")
	public R remindCount(@PathVariable("columnName") String columnName, HttpServletRequest request, 
						 @PathVariable("type") String type,@RequestParam Map<String, Object> map) {
		map.put("column", columnName);
		map.put("type", type);
		
		if(type.equals("2")) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Calendar c = Calendar.getInstance();
			Date remindStartDate = null;
			Date remindEndDate = null;
			if(map.get("remindstart")!=null) {
				Integer remindStart = Integer.parseInt(map.get("remindstart").toString());
				c.setTime(new Date()); 
				c.add(Calendar.DAY_OF_MONTH,remindStart);
				remindStartDate = c.getTime();
				map.put("remindstart", sdf.format(remindStartDate));
			}
			if(map.get("remindend")!=null) {
				Integer remindEnd = Integer.parseInt(map.get("remindend").toString());
				c.setTime(new Date());
				c.add(Calendar.DAY_OF_MONTH,remindEnd);
				remindEndDate = c.getTime();
				map.put("remindend", sdf.format(remindEndDate));
			}
		}
		
		Wrapper<YundongxiangmuEntity> wrapper = new EntityWrapper<YundongxiangmuEntity>();
		if(map.get("remindstart")!=null) {
			wrapper.ge(columnName, map.get("remindstart"));
		}
		if(map.get("remindend")!=null) {
			wrapper.le(columnName, map.get("remindend"));
		}


		int count = yundongxiangmuService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	






    @RequestMapping("/importExcel")
    public R importExcel(@RequestParam("file") MultipartFile file){
        try {
            //获取输入流
            InputStream inputStream = file.getInputStream();
            //创建读取工作簿
            Workbook workbook = WorkbookFactory.create(inputStream);
            //获取工作表
            Sheet sheet = workbook.getSheetAt(0);
            //获取总行
            int rows=sheet.getPhysicalNumberOfRows();
            if(rows>1){
                //获取单元格
                for (int i = 1; i < rows; i++) {
                    Row row = sheet.getRow(i);
                    YundongxiangmuEntity yundongxiangmuEntity =new YundongxiangmuEntity();
                    yundongxiangmuEntity.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
                    String yundongmingcheng = CommonUtil.getCellValue(row.getCell(0));
                    yundongxiangmuEntity.setYundongmingcheng(yundongmingcheng);
                    String xiangmuleixing = CommonUtil.getCellValue(row.getCell(1));
                    yundongxiangmuEntity.setXiangmuleixing(xiangmuleixing);
                    String changdimingcheng = CommonUtil.getCellValue(row.getCell(2));
                    yundongxiangmuEntity.setChangdimingcheng(changdimingcheng);
                    String faburen = CommonUtil.getCellValue(row.getCell(3));
                    yundongxiangmuEntity.setFaburen(faburen);
                     
                    //想数据库中添加新对象
                    yundongxiangmuService.insert(yundongxiangmuEntity);//方法
                }
            }
            inputStream.close();
        } catch (InvalidFormatException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return R.ok("导入成功");
    }

}
