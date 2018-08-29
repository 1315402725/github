/**
 * 
 */
package com.yubei.bean;

import lombok.Data;

import java.io.Serializable;
import java.util.List;

@Data
public class ZfbAppConfig  implements Serializable {

	private static final long serialVersionUID = 1L;
public ZfbAppConfig(){};
	private Long appConfigId;
	private String appName;
	private Integer positionShow;
	private Integer photoShow;
	private Long appId;
	private String appKey;
	private Long csUserId;
	private String csFeedId;
	private Long createTime;
	private Long upateTime;
	private Integer positionRequired;
	private Integer photoRequired;
	private Long csEmployeeId;
	private String csEmployeeName;


}