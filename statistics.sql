--统计每年的总访问量

select 
	count(distinct sid) as sid_total,
	count(distinct session_id) as sessionid_total,
	count(distinct ip) as ip_total,
	'-1' as area,
	'-1' as seo_source,
	'-1' as origin_channel,
	'-1' as hourinfo,
	yearinfo as time_str,
	'-1' as from_url,
	'5' as grouptype,
	'5' as time_type,
	yearinfo,
	'-1' as quarterinfo,
	'-1' as monthinfo,
	'-1' as dayinfo,
from itcast_dwd.visit_consult_dwd
group by yearinfo;



--统计每年每季度的总访问量
insert into table itcast_dws.visit_dws partition(yearinfo,quarterinfo,monthinfo,dayinfo)
select 
	count(distinct sid) as sid_total,
	count(distinct session_id) as sessionid_total,
	count(distinct ip) as ip_total,
	'-1' as area,
	'-1' as seo_source,
	'-1' as origin_channel,
	'-1' as hourinfo,
	concat(yearinfo,'-',quarterinfo) as time_str,
	'-1' as from_url,
	'5' as grouptype,
	'4' as time_type,
	yearinfo,
	'-1' as quarterinfo,
	'-1' as monthinfo,
	'-1' as dayinfo
from itcast_dwd.visit_consult_dwd
group by yearinfo,quarterinfo;



--统计每年每季度每月的总访问量
insert into table itcast_dws.visit_dws partition(yearinfo,quarterinfo,monthinfo,dayinfo)
select 
	count(distinct sid) as sid_total,
	count(distinct session_id) as sessionid_total,
	count(distinct ip) as ip_total,
	'-1' as area,
	'-1' as seo_source,
	'-1' as origin_channel,
	'-1' as hourinfo,
	concat(yearinfo,'-',monthinfo) as time_str,
	'-1' as from_url,
	'5' as grouptype,
	'3' as time_type,
	yearinfo,
	quarterinfo,
	monthinfo
	'-1' as dayinfo
from itcast_dwd.visit_consult_dwd
group by yearinfo,quarterinfo,monthinfo;




--统计每年每季度每月每天的总访问量
insert into table itcast_dws.visit_dws partition(yearinfo,quarterinfo,monthinfo,dayinfo)
select 
	count(distinct sid) as sid_total,
	count(distinct session_id) as sessionid_total,
	count(distinct ip) as ip_total,
	'-1' as area,
	'-1' as seo_source,
	'-1' as origin_channel,
	'-1' as hourinfo,
	concat(yearinfo,'-',monthinfo,'-',dayinfo) as time_str,
	'-1' as from_url,
	'5' as grouptype,
	'2' as time_type,
	yearinfo,
	quarterinfo,
	monthinfo,
	dayinfo
from itcast_dwd.visit_consult_dwd
group by yearinfo,quarterinfo,monthinfo,dayinfo;




--统计每年每季度每月每天每小时的总访问量
insert into table itcast_dws.visit_dws partition(yearinfo,quarterinfo,monthinfo,dayinfo)
select 
	count(distinct sid) as sid_total,
	count(distinct session_id) as sessionid_total,
	count(distinct ip) as ip_total,
	'-1' as area,
	'-1' as seo_source,
	'-1' as origin_channel,
	hourinfo
	concat(yearinfo,'-',monthinfo,'-',dayinfo,' ',hourinfo) as time_str,
	'-1' as from_url,
	'5' as grouptype,
	'1' as time_type,
	yearinfo,
	quarterinfo,
	monthinfo,
	dayinfo
from itcast_dwd.visit_consult_dwd
group by yearinfo,quarterinfo,monthinfo,dayinfo,hourinfo;


--统计每年每个受访页面的访问量
insert into table itcast_dws.visit_dws partition(yearinfo,quarterinfo,monthinfo,dayinfo)
select 
	count(distinct sid) as sid_total,
	count(distinct session_id) as sessionid_total,
	count(distinct ip) as ip_total,
	'-1' as area,
	'-1' as seo_source,
	'-1' as origin_channel,
	'-1' as hourinfo,
	concat(yearinfo,'_',quarterinfo) as time_str,
	 from_url,
	'4' as grouptype,
	'5' as time_type,
	yearinfo,
	quarterinfo,
	'-1' as monthinfo,
	'-1' as dayinfo
from itcast_dwd.visit_consult_dwd
group by yearinfo,from_url;

--统计每年每季度各个受访页面的访问量

insert into table itcast_dws.visit_dws partition(yearinfo,quarterinfo,monthinfo,dayinfo)
select 
	count(distinct sid) as sid_total,
	count(distinct session_id) as sessionid_total,
	count(distinct ip) as ip_total,
	'-1' as area,
	'-1' as seo_source,
	'-1' as origin_channel,
	'-1' as hourinfo,
	concat(yearinfo,'_',quarterinfo) as time_str,
	 from_url,
	'4' as grouptype,
	'4' as time_type,
	yearinfo,
	quarterinfo,
	'-1' as monthinfo,
	'-1' as dayinfo
from itcast_dwd.visit_consult_dwd
group by yearinfo,quarterinfo,from_url;


--统计每年每季度每月各个受访页面的访问量


insert into table itcast_dws.visit_dws partition(yearinfo,quarterinfo,monthinfo,dayinfo)
select 
	count(distinct sid) as sid_total,
	count(distinct session_id) as sessionid_total,
	count(distinct ip) as ip_total,
	'-1' as area,
	'-1' as seo_source,
	'-1' as origin_channel,
	'-1' as hourinfo,
	concat(yearinfo,'-',monthinfo) as time_str,
	 from_url,
	'4' as grouptype,
	'3' as time_type,
	yearinfo,
	quarterinfo,
	monthinfo,
	'-1' as dayinfo
from itcast_dwd.visit_consult_dwd
group by yearinfo,quarterinfo,monthinfo,from_url;



--统计每年每季度每月每天各个受访页面的访问量


insert into table itcast_dws.visit_dws partition(yearinfo,quarterinfo,monthinfo,dayinfo)
select 
	count(distinct sid) as sid_total,
	count(distinct session_id) as sessionid_total,
	count(distinct ip) as ip_total,
	'-1' as area,
	'-1' as seo_source,
	'-1' as origin_channel,
	'-1' as hourinfo,
	concat(yearinfo,'-',monthinfo,'-',dayinfo) as time_str,
	 from_url,
	'4' as grouptype,
	'2' as time_type,
	yearinfo,
	quarterinfo,
	 monthinfo,
	dayinfo
from itcast_dwd.visit_consult_dwd
group by yearinfo,quarterinfo,monthinfo,dayinfo,from_url;



--统计每年每季度每月每天每小时各个受访页面的访问量


insert into table itcast_dws.visit_dws partition(yearinfo,quarterinfo,monthinfo,dayinfo)
select 
	count(distinct sid) as sid_total,
	count(distinct session_id) as sessionid_total,
	count(distinct ip) as ip_total,
	'-1' as area,
	'-1' as seo_source,
	'-1' as origin_channel,
	hourinfo,
	concat(yearinfo,'-',monthinfo,'-',dayinfo,' ',hourinfo) as time_str,
	 from_url,
	'4' as grouptype,
	'1' as time_type,
	yearinfo,
	quarterinfo,
	 monthinfo,
	dayinfo
from itcast_dwd.visit_consult_dwd
group by yearinfo,quarterinfo,monthinfo,day_info,hourinfo,from_url;



--统计每年的总咨询量
insert into table itcast_dws.consult_dws partition(yearinfo,quarterinfo,monthinfo,dayinfo)
select 


	count(distinct sid) as sid_total,
	count(distinct session_id) as sessionid_total,
	count(distinct ip) as ip_total,
	'-1' as area,
	'-1' as origin_channel,
	'-1' as hourinfo,
	yearinfo as time_str,
	'3' as grouptype,
	'5' as time_type,
	yearinfo,
	'-1' as quarterinfo,
	'-1' as monthinfo,
	'-1' as dayinfo

from itcast_dwd.visit_consult_dwd where msg_count>=1
group by yearinfo;


--统计每年每季度的总咨询量


insert into table itcast_dws.consult_dws partition(yearinfo,quarterinfo,monthinfo,dayinfo)
select 


	count(distinct sid) as sid_total,
	count(distinct session_id) as sessionid_total,
	count(distinct ip) as ip_total,
	'-1' as area,
	'-1' as origin_channel,
	'-1' as hourinfo,
	concat(yearinfo,'_',quarterinfo) as time_str,
	'3' as grouptype,
	'4' as time_type,
	yearinfo,
	 quarterinfo,
	'-1' as monthinfo,
	'-1' as dayinfo

from itcast_dwd.visit_consult_dwd where msg_count>=1
group by yearinfo,quarterinfo;


--统计每年每季度每月的咨询总量

insert into table itcast_dws.consult_dws partition(yearinfo,quarterinfo,monthinfo,dayinfo)
select 


	count(distinct sid) as sid_total,
	count(distinct session_id) as sessionid_total,
	count(distinct ip) as ip_total,
	'-1' as area,
	'-1' as origin_channel,
	'-1' as hourinfo,
	concat(yearinfo,'_',monthinfo) as time_str,
	'3' as grouptype,
	'3' as time_type,
	yearinfo,
	 quarterinfo,
	 monthinfo,
	'-1' as dayinfo

from itcast_dwd.visit_consult_dwd where msg_count>=1
group by yearinfo,quarterinfo,monthinfo;



--统计每年每季度每月每天的咨询总量

insert into table itcast_dws.consult_dws partition(yearinfo,quarterinfo,monthinfo,dayinfo)
select 


	count(distinct sid) as sid_total,
	count(distinct session_id) as sessionid_total,
	count(distinct ip) as ip_total,
	'-1' as area,
	'-1' as origin_channel,
	'-1' as hourinfo,
	concat(yearinfo,'_',monthinfo,'_',dayinfo) as time_str,
	'3' as grouptype,
	'2' as time_type,
	yearinfo,
	 quarterinfo,
	 monthinfo,
	dayinfo

from itcast_dwd.visit_consult_dwd where msg_count>=1
group by yearinfo,quarterinfo,monthinfo,dayinfo;



--统计每年每季度每月每天每小时的咨询总量

insert into table itcast_dws.consult_dws partition(yearinfo,quarterinfo,monthinfo,dayinfo)
select 


	count(distinct sid) as sid_total,
	count(distinct session_id) as sessionid_total,
	count(distinct ip) as ip_total,
	'-1' as area,
	'-1' as origin_channel,
 hourinfo,
	concat(yearinfo,'_',monthinfo,'_',dayinfo,' ',hourinfo) as time_str,
	'3' as grouptype,
	'1' as time_type,
	yearinfo,
	 quarterinfo,
	 monthinfo,
	dayinfo

from itcast_dwd.visit_consult_dwd where msg_count>=1
group by yearinfo,quarterinfo,monthinfo,dayinfo,hourinfo;



--基于时间，统计各个地区的咨询量
--统计每年各个地区的咨询量
insert into table itcast_dws.consult_dws partition(yearinfo,quarterinfo,monthinfo,dayinfo)
select 


	count(distinct sid) as sid_total,
	count(distinct session_id) as sessionid_total,
	count(distinct ip) as ip_total,
	 area,
	'-1' as origin_channel,
	'-1' as hourinfo,
	yearinfo as time_str,
	'1' as grouptype,
	'5' as time_type,
	yearinfo,
	 '-1' as quarterinfo,
	'-1' as monthinfo,
	'-1' as dayinfo

from itcast_dwd.visit_consult_dwd where msg_count>=1
group by yearinfo,area;



--统计每年每季度各个地区的咨询量
insert into table itcast_dws.consult_dws partition(yearinfo,quarterinfo,monthinfo,dayinfo)
select 


	count(distinct sid) as sid_total,
	count(distinct session_id) as sessionid_total,
	count(distinct ip) as ip_total,
area,
	'-1' as origin_channel,
	'-1' as hourinfo,
	concat(yearinfo,'_',quarterinfo) as time_str,
	'1' as grouptype,
	'4' as time_type,
	yearinfo,
	 quarterinfo,
	'-1' as monthinfo,
	'-1' as dayinfo

from itcast_dwd.visit_consult_dwd where msg_count>=1
group by yearinfo,quarterinfo,area;




--统计每年每季度每月各个地区的咨询量

insert into table itcast_dws.consult_dws partition(yearinfo,quarterinfo,monthinfo,dayinfo)
select 


	count(distinct sid) as sid_total,
	count(distinct session_id) as sessionid_total,
	count(distinct ip) as ip_total,
area,
	'-1' as origin_channel,
	'-1' as hourinfo,
	concat(yearinfo,'-',monthinfo) as time_str,
	'1' as grouptype,
	'3' as time_type,
	yearinfo,
	 quarterinfo,
	 monthinfo,
	'-1' as dayinfo

from itcast_dwd.visit_consult_dwd where msg_count>=1
group by yearinfo,quarterinfo,monthinfo,area;




--统计每年每季度每月每天各个地区的咨询量

insert into table itcast_dws.consult_dws partition(yearinfo,quarterinfo,monthinfo,dayinfo)
select 


	count(distinct sid) as sid_total,
	count(distinct session_id) as sessionid_total,
	count(distinct ip) as ip_total,
area,
	'-1' as origin_channel,
	'-1' as hourinfo,
	concat(yearinfo,'-',monthinfo'-',dayinfo) as time_str,
	'1' as grouptype,
	'2' as time_type,
	yearinfo,
	 quarterinfo,
	 monthinfo,
	dayinfo

from itcast_dwd.visit_consult_dwd where msg_count>=1
group by yearinfo,quarterinfo,monthinfo,dayinfo,area;




--统计每年每季度每月每天每小时各个地区的咨询量


insert into table itcast_dws.consult_dws partition(yearinfo,quarterinfo,monthinfo,dayinfo)
select 


	count(distinct sid) as sid_total,
	count(distinct session_id) as sessionid_total,
	count(distinct ip) as ip_total,
area,
	'-1' as origin_channel,
	hourinfo,
	concat(yearinfo,'-',monthinfo'-',dayinfo,' ',hourinfo) as time_str,
	'1' as grouptype,
	'1' as time_type,
	yearinfo,
	 quarterinfo,
	 monthinfo,
	dayinfo

from itcast_dwd.visit_consult_dwd where msg_count>=1
group by yearinfo,quarterinfo,monthinfo,dayinfo,area;


