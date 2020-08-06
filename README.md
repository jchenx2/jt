## 定义

1. jt_account_log 账户变动记录表
2. jt_admin 管理员表
3. jt_banner 轮播图表
4. jt_card_config 年卡季卡月卡配置表
5. jt_comment 小说评论表
6. jt_fiction 小说基本信息表
7 .jt_fiction_chapter 小说章节表
8. jt_fiction_type 小说分类表
9. jt_give_log 赠送记录表
10. jt_menu 权限菜单表
11. jt_order 订单表
12. jt_order_goods 订单商品表
13. jt_recommend_log 推荐记录表
14. jt_role 权限角色表
15. jt_search_keyword 关键字配置表
16. jt_session token 会话表
17. jt_sign 签到记录表
18. jt_system_config 系统信息配置表
19. jt_user 用户基本信息表
20. jt_user_bookcase 用户书架表
21. jt_user_buy_fiction 用户购买书籍记录表
22. jt_user_goods 用户对应商品表
23. jt_wechat_user_temporary 用户注册临时表

## 问题

1.  登录数据库的客户端跟 mysql8.0 不兼容，mysql8.0 密码认证采用了新的密码格式
    UnhandledPromiseRejectionWarning: Error: ER_NOT_SUPPORTED_AUTH_MODE: Client does not support authentication protocol requested by server; consider upgrading MySQL client

    解决方案：
    在系统 mysql 终端输入以下命令
    //password 是你的数据库账户密码，root 和 host 也是
    ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';
