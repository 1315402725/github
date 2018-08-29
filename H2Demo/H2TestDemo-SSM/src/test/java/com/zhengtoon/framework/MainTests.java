package com.zhengtoon.framework;


import com.alibaba.fastjson.JSON;



import com.yubei.bean.ZfbAppConfig;
import com.yubei.service.ZfbAppConfigServiceImpl;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;


public class MainTests extends AbstractTestCase {
	@Autowired
	ZfbAppConfigServiceImpl zfbAppConfigServiceImpl;

	@Test
	public void insertTest() throws Exception {
		//TODO: Test goes here...

		ZfbAppConfig zfg = new ZfbAppConfig();
		zfg.setAppName("dfdsfds");
		zfg.setPositionShow(0);
		zfg.setPhotoShow(0);
		zfg.setAppId(1L);
		zfg.setAppKey("0");
		zfg.setCsUserId(1L);
		zfg.setCsFeedId("0001");
		zfg.setCreateTime(201700725L);
		zfg.setUpateTime(0L);


		zfbAppConfigServiceImpl.insert(zfg);
		ZfbAppConfig result = zfbAppConfigServiceImpl.getAppConfigByAppCofigId(1L);
		System.out.println(JSON.toJSONString(result));


	}
}