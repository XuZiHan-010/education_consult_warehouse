--ods层分区create ods layer for consulting data

CREATE DATABASE IF NOT EXISTS `itcast_ods`;

set hive.exec.orc.compression.strategy=COMPRESSION;

CREATE EXTERNAL TABLE IF NOT EXISTS itcast_ods.web_chat_ems (
  id INT comment '主键',
  create_date_time STRING comment '数据创建时间',
  session_id STRING comment '七陌sessionId',
  sid STRING comment '访客id',
  create_time STRING comment '会话创建时间',
  seo_source STRING comment '搜索来源',
  seo_keywords STRING comment '关键字',
  ip STRING comment 'IP地址',
  area STRING comment '地域',
  country STRING comment '所在国家',
  province STRING comment '省',
  city STRING comment '城市',
  origin_channel STRING comment '投放渠道',
  user_match STRING comment '所属坐席',
  manual_time STRING comment '人工开始时间',
  begin_time STRING comment '坐席领取时间 ',
  end_time STRING comment '会话结束时间',
  last_customer_msg_time_stamp STRING comment '客户最后一条消息的时间',
  last_agent_msg_time_stamp STRING comment '坐席最后一下回复的时间',
  reply_msg_count INT comment '客服回复消息数',
  msg_count INT comment '客户发送消息数',
  browser_name STRING comment '浏览器名称',
  os_info STRING comment '系统名称')
comment '访问会话信息表'
PARTITIONED BY(starts_time STRING)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\t'
stored as orc
location '/user/hive/warehouse/itcast_ods.db/web_chat_ems_ods'
TBLPROPERTIES ('orc.compress'='ZLIB');


CREATE EXTERNAL TABLE IF NOT EXISTS itcast_ods.web_chat_text_ems (
  id INT COMMENT '主键来自MySQL',
  referrer STRING comment '上级来源页面',
  from_url STRING comment '会话来源页面',
  landing_page_url STRING comment '访客着陆页面',
  url_title STRING comment '咨询页面title',
  platform_description STRING comment '客户平台信息',
  other_params STRING comment '扩展字段中数据',
  history STRING comment '历史访问记录'
) comment 'EMS-PV测试表'
PARTITIONED BY(start_time STRING)
ROW FORMAT DELIMITED 
FIELDS TERMINATED BY '\t'
stored as orc
location '/user/hive/warehouse/itcast_ods.db/web_chat_text_ems_ods'
TBLPROPERTIES ('orc.compress'='ZLIB');



--dwd层分区create dwd layer for consulting data
CREATE DATABASE IF NOT EXISTS `itcast_dwd`
WITH DBPROPERTIES ( 'creator' = 'jiale', 'create_date' = '2020-05-05');


create table if not exists itcast_dwd.visit_consult_dwd(
  session_id STRING comment '七陌sessionId',
  sid STRING comment '访客id',
  create_time bigint comment '会话创建时间',
  seo_source STRING comment '搜索来源',
  ip STRING comment 'IP地址',
  area STRING comment '地域',
  msg_count int comment '客户发送消息数',
  origin_channel STRING COMMENT '来源渠道',
  referrer STRING comment '上级来源页面',
  from_url STRING comment '会话来源页面',
  landing_page_url STRING comment '访客着陆页面',
  url_title STRING comment '咨询页面title',
  platform_description STRING comment '客户平台信息',
  other_params STRING comment '扩展字段中数据',
  history STRING comment '历史访问记录',
  hourinfo string comment '小时',
  quarterinfo string comment '季度'
)
comment '访问咨询DWD表'
partitioned by(yearinfo String, monthinfo String, dayinfo string)
row format delimited fields terminated by '\t'
stored as orc
location '/user/hive/warehouse/itcast_dwd.db/visit_consult_dwd'
tblproperties ('orc.compress'='SNAPPY');


--创建dws层分区create dws layer
CREATE DATABASE IF NOT EXISTS `itcast_dws`
WITH DBPROPERTIES ( 'creator' = 'kongshuai', 'create_date' = '2020-05-05');



CREATE TABLE IF NOT EXISTS itcast_dws.visit_dws (
  sid_total INT COMMENT '根据sid去重求count',
  sessionid_total INT COMMENT '根据sessionid去重求count',
  ip_total INT COMMENT '根据IP去重求count',
  area STRING COMMENT '区域信息',
  seo_source STRING COMMENT '搜索来源',
  origin_channel STRING COMMENT '来源渠道',
  hourinfo STRING COMMENT '创建时间，统计至小时',
  quarterinfo STRING COMMENT '季度',
  time_str STRING COMMENT '时间明细',
  from_url STRING comment '会话来源页面',
  groupType STRING COMMENT '产品属性类型：1.地区；2.搜索来源；3.来源渠道；4.会话来源页面；5.总访问量',
  time_type STRING COMMENT '时间聚合类型：1、按小时聚合；2、按天聚合；3、按月聚合；4、按季度聚合；5、按年聚合；')
comment 'EMS访客日志dws表'
PARTITIONED BY(yearinfo STRING,monthinfo STRING,dayinfo STRING)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\t'
stored as orc
location '/user/hive/warehouse/itcast_dws.db/visit_dws'
TBLPROPERTIES ('orc.compress'='SNAPPY');



--sqoop导入
sqoop import \
--connect jdbc:mysql://192.168.52.150:3306/nev \
--username root \
--password 123456 \
--query 'select id,referrer,from_url,landing_page_url,url_title,platform_description,other_params,history, "2025-03-01" as start_time from web_chat_text_ems_2019_07 where $CONDITIONS' \
--hcatalog-database itcast_ods \
--hcatalog-table web_chat_text_ems \
-m 100 \
--split-by id


sqoop import \
--connect jdbc:mysql://192.168.52.150:3306/nev \
--username root \
--password 123456 \
--query 'select id, create_date_time, session_id, sid, create_time, seo_source, seo_keywords, ip, area, country, province, city, origin_channel, user as user_match, manual_time, begin_time, end_time, last_customer_msg_time_stamp, last_agent_msg_time_stamp, reply_msg_count, msg_count, browser_name, os_info, "2025-03-01" as starts_time from web_chat_ems_2019_07 where $CONDITIONS' \
--hcatalog-database itcast_ods \
--hcatalog-table web_chat_ems \
-m 100 \
--split-by id

