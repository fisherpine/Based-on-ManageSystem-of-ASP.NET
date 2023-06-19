# Based-on-ManageSystem-of-ASP.NET
三层架构Model、DAL、BLL。包含信息的增删改，文件的上传下载。前端页面来自于网络，如有侵权请联系本人删除
此项目连接的是SqlServer,在项目中的web.config中修改服务器名，用户名和密码，数据库即可使用。
User表
create table dbo.tb_user
(
    id       int identity
        primary key,
    username varchar(50),
    password varchar(50),
    address  varchar(50)
)
News表
create table dbo.tb_news
(
    id        int identity
        primary key,
    newstitle varchar(50),
    newsurl   varchar(100)
)
