package com.bcdbook.summer.common.settime;

import javax.servlet.ServletContext;

import org.apache.log4j.Logger;
import org.springframework.context.ApplicationContext;
import org.springframework.web.context.ContextLoader;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.bcdbook.summer.wechat.service.WechatService;


/**
 * 
 * @Title: WechatSettime.java
 * @Description: 微信相关的定时器的处理
 * @author lason
 * @created 2016年5月30日 下午9:08:01
 */
public class WechatSettime {
	private static Logger logger = Logger.getLogger(WechatSettime.class);
	/**
	 * 更新accessToken的方法,把最新的accessToken更新到数据库
	 * 
	 * @Discription 
	 * @author lason
	 * @created 2016年5月30日 下午9:26:52
	 */
	public void refreshAccessToken() {
//		System.out.println("刷新accessToken的方法执行");
		logger.info("定时器,accessToken刷新");
		WechatService wechatService = getConnectBean("wechatService");
		wechatService.refreshAccessToken();
	}

	/**
	 * 
	    * @Discription 手动加载WechatService的方法
	    * @author lason       
	    * @created 2016年6月1日 下午4:46:14     
	    * @param name
	    * @return
	 */
	public static WechatService getConnectBean(String name) {
		WebApplicationContext webApp = ContextLoader.getCurrentWebApplicationContext();
		ServletContext servletContext = webApp.getServletContext();
		ApplicationContext app = WebApplicationContextUtils.getWebApplicationContext(servletContext);
		
		return (WechatService) app.getBean(name);
	}
	
	
	/**
	 * 
	    * @Discription 更新微信端素材库中的内容到本地数据库
	    * @author lason       
	    * @created 2016年6月1日 下午4:33:58
	 */
	public void refreshMaterial(){
//		System.out.println("刷新素材的方法执行");
//		MaterialService materialService = getMaterialBean("materialService");
//		materialService.refreshMaterialToLocal();
	}
	
	/**
	 * 
	    * @Discription 手动加载MaterialService的方法
	    * @author lason       
	    * @created 2016年6月1日 下午4:46:36     
	    * @param name
	    * @return
	 */
//	public static MaterialService getMaterialBean(String name) {
//		WebApplicationContext webApp = ContextLoader.getCurrentWebApplicationContext();
//		ServletContext servletContext = webApp.getServletContext();
//		ApplicationContext app = WebApplicationContextUtils.getWebApplicationContext(servletContext);
//		
//		return (MaterialService) app.getBean(name);
//	}
}
