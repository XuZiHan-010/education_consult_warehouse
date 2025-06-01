set hive.auto.convert.join=false;
--关闭自动mapjoin 以避免内存不够的问题


--动态分区配置
set hive.exec.dynamic.partition=true;
set hive.exec.dynamic.partition.mode=nonstrict;
--hive 压缩

set hive.exec.compress.intermediate=true;
set hive.exec.compress.output=true;
--写入时压缩
set hive.exec.orc.compression.strategy=compression;


insert into table itcast_dwd.visit_consult_dwd partition(yearinfo,quarterinfo,monthinfo,dayinfo)
select 
	wce.session_id,
	wce.sid,
	unix_timestamp(wce.create_time) as create_time,
	wce.seo_source,
	wce.ip,
	wce.area,
	wce.msg_count,
	wce.origin_channel,
	wcte.referrer,
	wcte.landing_page_url,
	wcte.from_url,
	wcte.url_title,
	wcte.platform_description,
	wcte.other_params,
	wcte.history,
	substr(wce.create_time, 12, 2) as hourinfo,
    quarter(wce.create_time) as quarterinfo,
    substr(wce.create_time, 1, 4) as yearinfo,
    substr(wce.create_time, 6, 2) as monthinfo,
    substr(wce.create_time, 9, 2) as dayinfo

from itcast_ods.web_chat_ems wce join itcast_ods.web_chat_text_ems wcte
on wce.id=wcte.id where wce.starts_time='2025-03-01' and wcte.start_time='2025-03-01';




