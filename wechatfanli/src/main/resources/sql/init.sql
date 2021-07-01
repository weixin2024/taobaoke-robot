create database coupon default character set utf8mb4 default collate utf8mb4_general_ci;

grant all privileges on coupon.* to 'coupon'@'%' identified by 'coupon2019';
grant all privileges on coupon.* to 'coupon'@'localhost' identified by 'coupon2019';
flush privileges;

-- 数据库字段名也与好单库字段名保持一致，不强行改成驼峰，这样能省很多事儿
CREATE TABLE `tbl_goods` (
    `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `product_id`        bigint(20)      DEFAULT NULL    COMMENT '自增ID',
    `itemid` 	        bigint(20)      DEFAULT NULL    COMMENT '宝贝ID',
    `itemtitle`         varchar(250)    DEFAULT NULL    COMMENT '宝贝标题',
    `itemshorttitle`    varchar(100)    DEFAULT NULL    COMMENT '宝贝短标题',
    `itemdesc`          varchar(500)    DEFAULT NULL    COMMENT '宝贝推荐语',
    `itemprice`         decimal(20,2)   DEFAULT NULL    COMMENT '在售价',
    `itemsale`          bigint(20)      DEFAULT NULL    COMMENT '宝贝月销量',
    `itemsale2`         bigint(20)      DEFAULT NULL    COMMENT '宝贝近2小时跑单',
    `todaysale`         bigint(20)      DEFAULT NULL    COMMENT '当天销量',
    `itempic`           varchar(250)    DEFAULT NULL    COMMENT '宝贝主图原始图像',
    `itempic_copy`      varchar(250)    DEFAULT NULL    COMMENT '推广长图（带http://img.haodanku.com/进行访问）',
    `taobao_image`      varchar(1000)   DEFAULT NULL    COMMENT '轮播主图，用英文逗号分隔开来',
    `fqcat`             tinyint(4)      DEFAULT NULL    COMMENT '商品类目：1女装，2男装，3内衣，4美妆，5配饰，6鞋品，7箱包，8儿童，9母婴，10居家，11美食，12数码，13家电，14其他，15车品，16文体，17宠物',
    `itemendprice`      decimal(20,2)   DEFAULT NULL    COMMENT '宝贝券后价',
    `shoptype`          varchar(20)     DEFAULT NULL    COMMENT '店铺类型：天猫店（B）淘宝店（C）',
    `couponurl`         varchar(250)    DEFAULT NULL    COMMENT '优惠券链接',
    `couponmoney`       decimal(20,2)   DEFAULT NULL    COMMENT '优惠券金额',
    `is_brand`          tinyint(4)      DEFAULT NULL    COMMENT '是否为品牌产品（1是）',
    `is_live`           tinyint(4)      DEFAULT NULL    COMMENT '是否为直播（1是）',
    `guide_article`     varchar(500)    DEFAULT NULL    COMMENT '推广导购文案',
    `videoid`           bigint(20)      DEFAULT NULL    COMMENT '商品视频ID（id大于0的为有视频单，视频拼接地址http://cloud.video.taobao.com/play/u/1/p/1/e/6/t/1/+videoid+.mp4）',
    `activity_type`     varchar(20)     DEFAULT NULL    COMMENT '活动类型：普通活动/聚划算/淘抢购',
    `planlink`          varchar(250)    DEFAULT NULL    COMMENT '营销计划链接',
    `userid`            bigint(20)      DEFAULT NULL    COMMENT '店主的userid',
    `sellernick`        varchar(20)     DEFAULT NULL    COMMENT '店铺掌柜名',
    `shopname`          varchar(20)     DEFAULT NULL    COMMENT '店铺名',
    `tktype`            varchar(20)     DEFAULT NULL    COMMENT '佣金计划：/隐藏/营销',
    `tkrates`           decimal(20,2)   DEFAULT NULL    COMMENT '佣金比例',
    `cuntao`            tinyint(4)      DEFAULT NULL    COMMENT '是否村淘（1是）',
    `tkmoney`           decimal(20,2)   DEFAULT NULL    COMMENT '预计可得（宝贝价格 * 佣金比例 / 100）',
    `couponreceive2`    bigint(20)      DEFAULT NULL    COMMENT '当天优惠券领取量',
    `couponsurplus`     bigint(20)      DEFAULT NULL    COMMENT '优惠券剩余量',
    `couponnum`         bigint(20)      DEFAULT NULL    COMMENT '优惠券总数量',
    `couponexplain`     varchar(100)    DEFAULT NULL    COMMENT '优惠券使用条件',
    `couponstarttime`   bigint(20)      DEFAULT NULL    COMMENT '优惠券开始时间',
    `couponendtime`     bigint(20)      DEFAULT NULL    COMMENT '优惠券结束时间',
    `start_time`        bigint(20)      DEFAULT NULL    COMMENT '活动开始时间',
    `end_time`          bigint(20)      DEFAULT NULL    COMMENT '活动结束时间',
    `starttime`         bigint(20)      DEFAULT NULL    COMMENT '发布时间',
    `report_status`     tinyint(4)      DEFAULT NULL    COMMENT '举报处理条件：0未举报、1为待处理、2为忽略、3为下架',
    `general_index`     bigint(20)      DEFAULT NULL    COMMENT '好单指数',
    `seller_name`       varchar(20)     DEFAULT NULL    COMMENT '放单人名号',
    `discount`          decimal(20,2)   DEFAULT NULL    COMMENT '折扣力度',
    `deposit`           decimal(20,2)   DEFAULT NULL    COMMENT '双十一定金',
    `deposit_deduct`    decimal(20,2)   DEFAULT NULL    COMMENT '双十一定金抵扣金额',
    `create_time`       datetime        NOT NULL        COMMENT '创建时间',
    `update_time`       datetime        DEFAULT NULL    COMMENT '修改时间',
    `deleted`           tinyint(4)      DEFAULT '0'     COMMENT '逻辑删除',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='商品';
