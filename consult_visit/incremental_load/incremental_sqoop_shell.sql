create table web_chat_ems_2025_05
as
select  *
    from web_chat_ems_2019_07 where create_time between '2019-07-01 00:00:00' and '2019-07-01 23:59:59';

update web_chat_ems_2025_05 set create_time=concat('2025-05-31 ',substr(create_time,12));



create table web_chat_text_ems_2025_05 as
select temp2.* from
(select * from web_chat_ems_2019_07
          where create_time between '2019-07-01 00:00:00' and '2019-07-01 23:59:59') temp1
join web_chat_text_ems_2019_07 temp2 on temp1.id=temp2.id;



--模拟增量数据收集，收集前一天数据

--访问咨询表的主数据
select
id,create_date_time,session_id,sid,create_time,seo_source,seo_keywords,ip,area,country,province,city,origin_channel,
user as user_match_manual_time,begin_time,end_time,last_customer_msg_time_stamp,last_agent_msg_time_stamp,reply_msg_count,
msg_count,browser_name,os_info,'2025-05-31' as starts_time
from web_chat_ems_2025_05 where create_time between '2025-05-31 00:00:00' and '2025-05-31 23:59:59';









-- 访问咨询表的附属表的数据
select

temp2.*,'2025-05-31' as start_time
from (select id from web_chat_ems_2025_05 where create_time between '2025-05-31 00:00:00' and '2025-05-31 23:59:59') temp1
join web_chat_text_ems_2025_05 temp2 on temp1.id=temp2.id;



-- 增量sql集中到sqoop脚本中
yearStr=`date -d ${dateStr} + '%Y'`

monthStr=`date -d ${dateStr} + '%m'`
jdbcUrl='jdbc:mysql://192.168.52.150:3306/nev'
username='root'
password='123456'
m='1'



sqoop import \
--connect ${jdbcUrl} \
--username ${username} \
--password ${password} \
--query select 
'id,create_date_time,session_id,sid,create_time,seo_source,seo_keywords,ip,area,country,province,city,origin_channel,
user as user_match_manual_time,begin_time,end_time,last_customer_msg_time_stamp,last_agent_msg_time_stamp,reply_msg_count,
msg_count,browser_name,os_info,'${dateNowStr}' as starts_time
from web_chat_ems_${yearStr}_${monthStr} where create_time between '${dateStr} 00:00:00' and '${dateStr} 23:59:59' and \$conditions'\
--hcatalog-database itcast_ods \
--hcatalog-table web_chat_ems \
-m ${m}


-- 访问咨询表


sqoop import \
--connect ${jdbcUrl} \
--username ${username} \
--password ${password} \
--query select " temp2.*,'${dateNowStr}' as start_time
from (select id from web_chat_ems_${yearStr}_${monthStr} where create_time between '${dateStr} 00:00:00' and '${dateStr} 23:59:59') temp1
join web_chat_text_ems_${yearStr}_${monthStr} temp2 on temp1.id=temp2.id where 1=1 and \$conditions "\
--hcatalog-database itcast_ods \
--hcatalog-table web_chat_text_ems \
-m ${m}








#!/bin/bash

export SQOOP_HOME=/usr/bin/sqoop

if [ $# -eq 1 ]
then
    dateStr=$1
else
    dateStr=$(date -d "-1 day" +'%Y-%m-%d')
fi

dateNowStr=$(date +'%Y-%m-%d')

yearStr=$(date -d ${dateStr} +'%Y')
monthStr=$(date -d ${dateStr} +'%m')

jdbcUrl='jdbc:mysql://192.168.52.150:3306/nev'
username='root'
password='123456'
m='1'

${SQOOP_HOME} import \
--connect ${jdbcUrl} \
--username ${username} \
--password ${password} \
--query "SELECT 
id, create_date_time, session_id, sid, create_time, seo_source, seo_keywords, ip,
area, country, province, city, origin_channel, USER AS user_match, manual_time, begin_time, end_time,
last_customer_msg_time_stamp, last_agent_msg_time_stamp, reply_msg_count,
msg_count, browser_name, os_info, '${dateNowStr}' AS starts_time
FROM web_chat_ems_${yearStr}_${monthStr} 
WHERE create_time BETWEEN '${dateStr} 00:00:00' AND '${dateStr} 23:59:59' AND \$CONDITIONS" \
--hcatalog-database itcast_ods \
--hcatalog-table web_chat_ems \
-m ${m}

${SQOOP_HOME} import \
--connect ${jdbcUrl} \
--username ${username} \
--password ${password} \
--query "SELECT 
temp2.*, '${dateNowStr}' AS start_time
FROM (SELECT id FROM web_chat_ems_${yearStr}_${monthStr} 
      WHERE create_time BETWEEN '${dateStr} 00:00:00' AND '${dateStr} 23:59:59') temp1
JOIN web_chat_text_ems_${yearStr}_${monthStr} temp2 
ON temp1.id = temp2.id 
WHERE 1=1 AND \$CONDITIONS" \
--hcatalog-database itcast_ods \
--hcatalog-table web_chat_text_ems \
-m ${m}
