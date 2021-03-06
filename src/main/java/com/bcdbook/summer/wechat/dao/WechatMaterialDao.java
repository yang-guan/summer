package com.bcdbook.summer.wechat.dao;

import org.springframework.stereotype.Repository;

import com.bcdbook.summer.common.persistence.dao.CrudDao;
import com.bcdbook.summer.wechat.pojo.WechatMaterial;

@Repository(value="wechatMaterialDao")
public interface WechatMaterialDao extends CrudDao<WechatMaterial> {

}
