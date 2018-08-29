/**
 * 
 */
package com.yubei.service;


import com.yubei.bean.ZfbAppConfig;

public interface ZfbAppConfigService {

		int insert(ZfbAppConfig zfbAppConfig);

	     ZfbAppConfig getAppConfigByAppCofigId(Long appConfigId);


}