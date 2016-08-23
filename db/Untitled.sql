-- MySQL Script generated by MySQL Workbench
-- Tue Aug 23 17:34:05 2016
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema summer
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `summer` ;

-- -----------------------------------------------------
-- Schema summer
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `summer` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
SHOW WARNINGS;
USE `summer` ;

-- -----------------------------------------------------
-- Table `summer`.`sys_power`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `summer`.`sys_power` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `summer`.`sys_power` (
  `id` VARCHAR(145) NOT NULL COMMENT '用户id',
  `user_name` VARCHAR(145) NULL COMMENT '用户名',
  `pwd` VARCHAR(245) NULL COMMENT '密码',
  `age` INT NULL COMMENT '年龄',
  `gender` INT NULL,
  `phone` VARCHAR(145) NULL COMMENT '电话',
  `email` VARCHAR(145) NULL COMMENT '邮箱',
  `open_id` VARCHAR(145) NULL COMMENT '微信绑定时的openid',
  `addr` VARCHAR(445) NULL COMMENT '地址',
  `company` INT NULL COMMENT '公司',
  `department` INT NULL COMMENT '部门',
  `position` INT NULL COMMENT '职位',
  `user_type` INT NULL COMMENT '用户状态,1:新注册用户,2:邮箱未验证,3:电话未验证,4:微信未认证',
  `is_lock` INT NULL COMMENT '用户的可使用状态,1:正常,2:锁定',
  `create_time` VARCHAR(145) NULL COMMENT '添加时间',
  `create_by` VARCHAR(145) NULL,
  `update_time` VARCHAR(145) NULL COMMENT '更新时间',
  `update_by` VARCHAR(145) NULL,
  `remark` VARCHAR(245) NULL COMMENT '备注信息',
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = '用户表';

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `summer`.`sys_menu`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `summer`.`sys_menu` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `summer`.`sys_menu` (
  `id` VARCHAR(145) NOT NULL,
  `del_flag` INT NULL,
  `parent_id` VARCHAR(145) NULL,
  `name` VARCHAR(145) NULL,
  `description` VARCHAR(245) NULL,
  `href` VARCHAR(245) NULL,
  `target` VARCHAR(45) NULL,
  `icon` VARCHAR(45) NULL,
  `sort` INT NULL,
  `permission` VARCHAR(75) NULL,
  `is_show` INT NULL,
  `create_time` VARCHAR(145) NULL,
  `create_by` VARCHAR(145) NULL,
  `update_time` VARCHAR(145) NULL,
  `update_by` VARCHAR(145) NULL,
  `remark` VARCHAR(245) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `summer`.`wech_msg`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `summer`.`wech_msg` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `summer`.`wech_msg` (
  `id` VARCHAR(145) NOT NULL COMMENT '消息id',
  `del_flag` INT NULL,
  `name` VARCHAR(75) NULL COMMENT '消息的标题,从微信公众平台获取或者自己设定的值',
  `keyword` VARCHAR(145) NULL COMMENT '关键字',
  `msg_type` VARCHAR(45) NULL COMMENT '消息类型',
  `media_id` VARCHAR(254) NULL COMMENT '媒体消息的id,可能是:image_id,music_id,video_id,voice_id',
  `content` VARCHAR(345) NULL COMMENT '当消息为文本时,',
  `create_time` VARCHAR(75) NULL COMMENT '添加时间',
  `update_time` VARCHAR(75) NULL COMMENT '更新时间',
  `title` VARCHAR(145) NULL COMMENT '消息的台头',
  `description` VARCHAR(345) NULL COMMENT '消息的描述',
  `music_url` VARCHAR(245) NULL COMMENT 'music类型的数据,music的连接地址',
  `hq_music_url` VARCHAR(245) NULL COMMENT 'music类型的数据,高品质音乐的连接地址',
  `remark` VARCHAR(245) NULL COMMENT '备注信息',
  PRIMARY KEY (`id`))
ENGINE = InnoDB
COMMENT = '微信,用来存储消息的数据库';

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `summer`.`wech_base`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `summer`.`wech_base` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `summer`.`wech_base` (
  `id` VARCHAR(145) NOT NULL COMMENT 'id',
  `del_flag` INT NULL,
  `access_token` VARCHAR(245) NULL COMMENT '用于验证的access_token',
  `refresh_token` VARCHAR(245) NULL COMMENT '用于刷新的refresh_token',
  `create_time` VARCHAR(145) NULL COMMENT '添加时间',
  `update_time` VARCHAR(145) NULL COMMENT '更新时间',
  PRIMARY KEY (`id`))
ENGINE = InnoDB
COMMENT = '微信基础信息数据';

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `summer`.`sys_user`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `summer`.`sys_user` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `summer`.`sys_user` (
  `id` VARCHAR(145) NOT NULL COMMENT '用户id',
  `del_flag` INT NULL,
  `user_name` VARCHAR(145) NULL COMMENT '用户名',
  `pwd` VARCHAR(245) NULL COMMENT '密码',
  `age` INT NULL COMMENT '年龄',
  `gender` INT NULL,
  `phone` VARCHAR(145) NULL COMMENT '电话',
  `email` VARCHAR(145) NULL COMMENT '邮箱',
  `open_id` VARCHAR(145) NULL COMMENT '微信绑定时的openid',
  `addr` VARCHAR(445) NULL COMMENT '地址',
  `company` INT NULL COMMENT '公司',
  `department` INT NULL COMMENT '部门',
  `position` INT NULL COMMENT '职位',
  `user_type` INT NULL COMMENT '用户状态,1:新注册用户,2:邮箱未验证,3:电话未验证,4:微信未认证',
  `is_lock` INT NULL COMMENT '用户的可使用状态,1:正常,2:锁定',
  `create_time` VARCHAR(145) NULL COMMENT '添加时间',
  `create_by` VARCHAR(145) NULL,
  `update_time` VARCHAR(145) NULL COMMENT '更新时间',
  `update_by` VARCHAR(145) NULL,
  `remark` VARCHAR(245) NULL COMMENT '备注信息',
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = '用户表';

SHOW WARNINGS;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;