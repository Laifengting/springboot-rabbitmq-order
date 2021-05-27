-- 删除库
DROP DATABASE IF EXISTS meituan;
-- 新建库
CREATE DATABASE meituan DEFAULT CHARACTER SET
	utf8mb4 COLLATE utf8mb4_unicode_ci;
-- 使用库
USE meituan;

-- 删除表
DROP TABLE IF EXISTS mt_order;
-- 新建表
CREATE TABLE mt_order (
	order_id      VARCHAR(64) NOT NULL COMMENT '订单ID',
	user_id       VARCHAR(64)   DEFAULT NULL COMMENT '用户ID',
	order_content VARCHAR(255) DEFAULT NULL COMMENT '订单详情',
	gmt_created   DATETIME     DEFAULT NOW() COMMENT '创建时间',
	gmt_modified  DATETIME     DEFAULT NOW() COMMENT '修改时间',
	PRIMARY KEY (order_id)
)
	ENGINE = InnoDB
	DEFAULT CHARSET = utf8mb4
	COLLATE = utf8mb4_unicode_ci COMMENT = '地址表'
	AUTO_INCREMENT = 1;

-- 删除表
DROP TABLE IF EXISTS mt_dispather;
-- 新建表
CREATE TABLE mt_dispather (
	dispather_id  VARCHAR(64) NOT NULL COMMENT '配送ID',
	order_id      VARCHAR(64) NOT NULL COMMENT '订单ID',
	status        INT(3)       DEFAULT 0 COMMENT '配送状态，0：未配送，1：正在配送，2：配送完成，3：配送失败',
	user_id       VARCHAR(64)   DEFAULT NULL COMMENT '用户ID',
	order_content VARCHAR(255) DEFAULT NULL COMMENT '订单详情',
	gmt_created   DATETIME     DEFAULT NOW() COMMENT '创建时间',
	gmt_modified  DATETIME     DEFAULT NOW() COMMENT '修改时间',
	PRIMARY KEY (dispather_id)
)
	ENGINE = InnoDB
	DEFAULT CHARSET = utf8mb4
	COLLATE = utf8mb4_unicode_ci COMMENT = '地址表'
	AUTO_INCREMENT = 1;
