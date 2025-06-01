create database scrm_bi default character set utf8mb4 collate utf8mb4_general_ci;



-- 访问量的结果表


CREATE TABLE IF NOT EXISTS scrm_bi.visit_dws (
  sid_total INT COMMENT '根据sid去重求count',
  sessionid_total INT COMMENT '根据sessionid去重求count',
  ip_total INT COMMENT '根据IP去重求count',
  area varchar(100) COMMENT '区域信息',
  seo_source varchar(100) COMMENT '搜索来源',
  origin_channel varchar(100) COMMENT '来源渠道',
  hourinfo varchar(100) COMMENT '创建时间，统计至小时',
  time_str varchar(100) COMMENT '时间明细',
  from_url varchar(100) comment '会话来源页面',
  groupType varchar(100) COMMENT '产品属性类型：1.地区；2.搜索来源；3.来源渠道；4.会话来源页面；5.总访问量',
  time_type varchar(100) COMMENT '时间聚合类型：1、按小时聚合；2、按天聚合；3、按月聚合；4、按季度聚合；5、按年聚合；',
  yearinfo varchar(100),
  quarterinfo varchar(100),
  monthinfo varchar(100),
  dayinfo varchar(100)
  )
comment 'EMS访客日志dws表';






CREATE TABLE IF NOT EXISTS scrm_bi.consult_dws (
  sid_total INT COMMENT '根据sid去重求count',
  sessionid_total INT COMMENT '根据sessionid去重求count',
  ip_total INT COMMENT '根据IP去重求count',
  area varchar(100) COMMENT '区域信息',
  seo_source varchar(100) COMMENT '搜索来源',
  origin_channel varchar(100) COMMENT '来源渠道',
  hourinfo varchar(100) COMMENT '创建时间，统计至小时',
  time_str varchar(100) COMMENT '时间明细',
  groupType varchar(100) COMMENT '产品属性类型：1.地区；2.搜索来源；3.来源渠道；4.会话来源页面；5.总访问量',
  time_type varchar(100) COMMENT '时间聚合类型：1、按小时聚合；2、按天聚合；3、按月聚合；4、按季度聚合；5、按年聚合；',
    yearinfo varchar(100),
  quarterinfo varchar(100),
  monthinfo varchar(100),
  dayinfo varchar(100)
  )
comment 'EMS访客日志dws表';




--sqoop数据导出咨询数据

sqoop export \
--connect "jdbc:mysql://192.168.52.150:3306/scrm_bi?userUnicode=true&characterEncoding=utf-8" \
--username root \
--password 123456 \
--table consult_dws \
--hcatalog-database itcast_dws \
--hcatalog-table consult_dws \
-m 1




--sqoop数据导出访问数据

sqoop export \
--connect "jdbc:mysql://192.168.52.150:3306/scrm_bi?userUnicode=true&characterEncoding=utf-8" \
--username root \
--password 123456 \
--table visit_dws \
--hcatalog-database itcast_dws \
--hcatalog-table visit_dws \
-m 1