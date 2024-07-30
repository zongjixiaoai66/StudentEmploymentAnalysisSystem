package com.entity.view;

import com.entity.YaoqingEntity;
import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;
import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
import java.util.Date;

/**
 * 邀请面试
 * 后端返回视图实体辅助类
 * （通常后端关联的表或者自定义的字段需要返回使用）
 */
@TableName("yaoqing")
public class YaoqingView extends YaoqingEntity implements Serializable {
    private static final long serialVersionUID = 1L;




		//级联表 jianli
			/**
			* 简历唯一编号
			*/
			private String jianliUuidNumber;
			/**
			* 简历名称
			*/
			private String jianliName;
			/**
			* 姓名
			*/
			private String jianliXingming;
			/**
			* 性别
			*/
			private Integer jianliSexTypes;
				/**
				* 性别的值
				*/
				private String jianliSexValue;
			/**
			* 手机号
			*/
			private String jianliPhone;
			/**
			* 照片
			*/
			private String jianliPhoto;
			/**
			* 院系
			*/
			private Integer yuanxiTypes;
				/**
				* 院系的值
				*/
				private String yuanxiValue;
			/**
			* 教育经历
			*/
			private String jiaoyuText;
			/**
			* 实习或工作经历
			*/
			private String shixiText;
			/**
			* 个人介绍
			*/
			private String gerenText;

		//级联表 zhaopin
			/**
			* 招聘信息名称
			*/
			private String zhaopinName;
			/**
			* 招聘信息照片
			*/
			private String zhaopinPhoto;
			/**
			* 薪资待遇
			*/
			private String zhaopinDaiyu;
			/**
			* 上班地点
			*/
			private String zhaopinAddress;
			/**
			* 联系人
			*/
			private String lianxirenName;
			/**
			* 招聘电话
			*/
			private String zhaopinPhone;
			/**
			* 招聘岗位
			*/
			private Integer zhaopinTypes;
				/**
				* 招聘岗位的值
				*/
				private String zhaopinValue;
			/**
			* 招聘人数
			*/
			private Integer zhaopinRenshuNumber;
			/**
			* 是否上架
			*/
			private Integer shangxiaTypes;
				/**
				* 是否上架的值
				*/
				private String shangxiaValue;
			/**
			* 招聘信息详情
			*/
			private String zhaopinContent;

	public YaoqingView() {

	}

	public YaoqingView(YaoqingEntity yaoqingEntity) {
		try {
			BeanUtils.copyProperties(this, yaoqingEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}













				//级联表的get和set jianli
					/**
					* 获取： 简历唯一编号
					*/
					public String getJianliUuidNumber() {
						return jianliUuidNumber;
					}
					/**
					* 设置： 简历唯一编号
					*/
					public void setJianliUuidNumber(String jianliUuidNumber) {
						this.jianliUuidNumber = jianliUuidNumber;
					}
					/**
					* 获取： 简历名称
					*/
					public String getJianliName() {
						return jianliName;
					}
					/**
					* 设置： 简历名称
					*/
					public void setJianliName(String jianliName) {
						this.jianliName = jianliName;
					}
					/**
					* 获取： 姓名
					*/
					public String getJianliXingming() {
						return jianliXingming;
					}
					/**
					* 设置： 姓名
					*/
					public void setJianliXingming(String jianliXingming) {
						this.jianliXingming = jianliXingming;
					}
					/**
					* 获取： 性别
					*/
					public Integer getJianliSexTypes() {
						return jianliSexTypes;
					}
					/**
					* 设置： 性别
					*/
					public void setJianliSexTypes(Integer jianliSexTypes) {
						this.jianliSexTypes = jianliSexTypes;
					}


						/**
						* 获取： 性别的值
						*/
						public String getJianliSexValue() {
							return jianliSexValue;
						}
						/**
						* 设置： 性别的值
						*/
						public void setJianliSexValue(String jianliSexValue) {
							this.jianliSexValue = jianliSexValue;
						}
					/**
					* 获取： 手机号
					*/
					public String getJianliPhone() {
						return jianliPhone;
					}
					/**
					* 设置： 手机号
					*/
					public void setJianliPhone(String jianliPhone) {
						this.jianliPhone = jianliPhone;
					}
					/**
					* 获取： 照片
					*/
					public String getJianliPhoto() {
						return jianliPhoto;
					}
					/**
					* 设置： 照片
					*/
					public void setJianliPhoto(String jianliPhoto) {
						this.jianliPhoto = jianliPhoto;
					}
					/**
					* 获取： 院系
					*/
					public Integer getYuanxiTypes() {
						return yuanxiTypes;
					}
					/**
					* 设置： 院系
					*/
					public void setYuanxiTypes(Integer yuanxiTypes) {
						this.yuanxiTypes = yuanxiTypes;
					}


						/**
						* 获取： 院系的值
						*/
						public String getYuanxiValue() {
							return yuanxiValue;
						}
						/**
						* 设置： 院系的值
						*/
						public void setYuanxiValue(String yuanxiValue) {
							this.yuanxiValue = yuanxiValue;
						}
					/**
					* 获取： 教育经历
					*/
					public String getJiaoyuText() {
						return jiaoyuText;
					}
					/**
					* 设置： 教育经历
					*/
					public void setJiaoyuText(String jiaoyuText) {
						this.jiaoyuText = jiaoyuText;
					}
					/**
					* 获取： 实习或工作经历
					*/
					public String getShixiText() {
						return shixiText;
					}
					/**
					* 设置： 实习或工作经历
					*/
					public void setShixiText(String shixiText) {
						this.shixiText = shixiText;
					}
					/**
					* 获取： 个人介绍
					*/
					public String getGerenText() {
						return gerenText;
					}
					/**
					* 设置： 个人介绍
					*/
					public void setGerenText(String gerenText) {
						this.gerenText = gerenText;
					}













				//级联表的get和set zhaopin
					/**
					* 获取： 招聘信息名称
					*/
					public String getZhaopinName() {
						return zhaopinName;
					}
					/**
					* 设置： 招聘信息名称
					*/
					public void setZhaopinName(String zhaopinName) {
						this.zhaopinName = zhaopinName;
					}
					/**
					* 获取： 招聘信息照片
					*/
					public String getZhaopinPhoto() {
						return zhaopinPhoto;
					}
					/**
					* 设置： 招聘信息照片
					*/
					public void setZhaopinPhoto(String zhaopinPhoto) {
						this.zhaopinPhoto = zhaopinPhoto;
					}
					/**
					* 获取： 薪资待遇
					*/
					public String getZhaopinDaiyu() {
						return zhaopinDaiyu;
					}
					/**
					* 设置： 薪资待遇
					*/
					public void setZhaopinDaiyu(String zhaopinDaiyu) {
						this.zhaopinDaiyu = zhaopinDaiyu;
					}
					/**
					* 获取： 上班地点
					*/
					public String getZhaopinAddress() {
						return zhaopinAddress;
					}
					/**
					* 设置： 上班地点
					*/
					public void setZhaopinAddress(String zhaopinAddress) {
						this.zhaopinAddress = zhaopinAddress;
					}
					/**
					* 获取： 联系人
					*/
					public String getLianxirenName() {
						return lianxirenName;
					}
					/**
					* 设置： 联系人
					*/
					public void setLianxirenName(String lianxirenName) {
						this.lianxirenName = lianxirenName;
					}
					/**
					* 获取： 招聘电话
					*/
					public String getZhaopinPhone() {
						return zhaopinPhone;
					}
					/**
					* 设置： 招聘电话
					*/
					public void setZhaopinPhone(String zhaopinPhone) {
						this.zhaopinPhone = zhaopinPhone;
					}
					/**
					* 获取： 招聘岗位
					*/
					public Integer getZhaopinTypes() {
						return zhaopinTypes;
					}
					/**
					* 设置： 招聘岗位
					*/
					public void setZhaopinTypes(Integer zhaopinTypes) {
						this.zhaopinTypes = zhaopinTypes;
					}


						/**
						* 获取： 招聘岗位的值
						*/
						public String getZhaopinValue() {
							return zhaopinValue;
						}
						/**
						* 设置： 招聘岗位的值
						*/
						public void setZhaopinValue(String zhaopinValue) {
							this.zhaopinValue = zhaopinValue;
						}
					/**
					* 获取： 招聘人数
					*/
					public Integer getZhaopinRenshuNumber() {
						return zhaopinRenshuNumber;
					}
					/**
					* 设置： 招聘人数
					*/
					public void setZhaopinRenshuNumber(Integer zhaopinRenshuNumber) {
						this.zhaopinRenshuNumber = zhaopinRenshuNumber;
					}
					/**
					* 获取： 是否上架
					*/
					public Integer getShangxiaTypes() {
						return shangxiaTypes;
					}
					/**
					* 设置： 是否上架
					*/
					public void setShangxiaTypes(Integer shangxiaTypes) {
						this.shangxiaTypes = shangxiaTypes;
					}


						/**
						* 获取： 是否上架的值
						*/
						public String getShangxiaValue() {
							return shangxiaValue;
						}
						/**
						* 设置： 是否上架的值
						*/
						public void setShangxiaValue(String shangxiaValue) {
							this.shangxiaValue = shangxiaValue;
						}
					/**
					* 获取： 招聘信息详情
					*/
					public String getZhaopinContent() {
						return zhaopinContent;
					}
					/**
					* 设置： 招聘信息详情
					*/
					public void setZhaopinContent(String zhaopinContent) {
						this.zhaopinContent = zhaopinContent;
					}



}
