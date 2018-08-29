package com.yubei.dao;


import com.yubei.bean.ZfbAppConfig;



import java.util.List;


public interface ZfbAppConfigMapper{


	int insert(ZfbAppConfig zfbAppConfig);

	ZfbAppConfig selectConfigByAppId(Long  appId);

}