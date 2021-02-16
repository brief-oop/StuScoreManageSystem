# 基于SSM框架实现的学生成绩管理系统
**涉及技术**：SSM框架、BootStrap框架、Servlet、拦截器Interceptor、jsp、session会话技术等。

**开发环境**：MySql+Idea+Tomcat8.5.51+jdk1.8

**项目简介**：该项目是一个基于SSM框架实现的为师生管理查询成绩的一个系统。实现了以下功能：

1. 实现了动态界面，老师，学生，管理员的界面各不相同，且各自能拥有的权限也有很大差别。
2. 实现session，让其登录数据在其各模块具有良好的可见性。
3. 实现过滤器拦截器，阻挡试图越过登录检测的非法请求，并将登录及注册功能列入白名单。

