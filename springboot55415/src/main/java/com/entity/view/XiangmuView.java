package com.entity.view;

import com.entity.XiangmuEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 项目
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2022-05-13 10:28:27
 */
@TableName("xiangmu")
public class XiangmuView  extends XiangmuEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public XiangmuView(){
	}
 
 	public XiangmuView(XiangmuEntity xiangmuEntity){
 	try {
			BeanUtils.copyProperties(this, xiangmuEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
