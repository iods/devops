insert into core_config_data (`scope`, scope_id, `path`, `value`) values('default', 0, 'dev/log/active', '1') on duplicate key update `value`='1';
insert into core_config_data (`scope`, scope_id, `path`, `value`) values('default', 0, 'admin/security/session_cookie_lifetime', '360000') on duplicate key update `value`='360000';
insert into core_config_data (`scope`, scope_id, `path`, `value`) values('default', 0, 'web/cookie/cookie_lifetime', '360000') on duplicate key update `value`='360000';
insert into core_config_data (`scope`, scope_id, `path`, `value`) values('default', 0, 'admin/security/password_is_forced', '0') on duplicate key update `value`='0';
insert into core_config_data (`scope`, scope_id, `path`, `value`) values('default', 0, 'admin/security/password_is_forced', '0') on duplicate key update `value`='0';
update      core_config_data set value = 'http://project.192.168.50.100.xip.io/'   where path like '%base_url';
update      core_config_data set value = ''                                        where path    = 'web/cookie/cookie_domain';
update      core_config_data set value = '{{unsecure_base_url}}'                   where path    = 'web/unsecure/base_link_url';
update      core_config_data set value = '{{secure_base_url}}'                     where path    = 'web/secure/base_link_url';
update      core_config_data set value = '{{unsecure_base_url}}media/'             where path    = 'web/unsecure/base_media_url';
update      core_config_data set value = '{{secure_base_url}}media/'               where path    = 'web/secure/base_media_url';
update      core_config_data set value = '{{unsecure_base_url}}skin/'              where path    = 'web/unsecure/base_skin_url';
update      core_config_data set value = '{{secure_base_url}}skin/'                where path    = 'web/secure/base_skin_url';
update      core_config_data set value = '{{unsecure_base_url}}js/'                where path    = 'web/unsecure/base_js_url';
update      core_config_data set value = '{{secure_base_url}}js/'                  where path    = 'web/secure/base_js_url';
update      core_config_data set value = '1'                                       where path    = 'dev/log/active';
update      core_config_data set value = '1'                                       where path    = 'dev/template/allow_symlink';
update      core_config_data set value = '360000'                                  where path    = 'admin/security/session_cookie_lifetime';
update      core_config_data set value = '360000'                                  where path    = 'web/cookie/cookie_lifetime';
update      core_config_data set value = '0'                                       where path    = 'admin/security/password_is_forced';
delete from core_config_data                                                       where path    = 'dev/js/merge_files';
delete from core_config_data                                                       where path    = 'dev/css/merge_css_files';
delete from core_config_data                                                       where path    = 'dev/css/merge_css_files';