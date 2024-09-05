# 使用官方的 Nginx 镜像作为基础镜像
FROM nginx:latest

# 删除默认的 Nginx 配置
RUN rm /etc/nginx/conf.d/default.conf

# 将自定义的 Nginx 配置复制到容器中
COPY nginx.conf /etc/nginx/conf.d/

# 暴露 HTTP 端口
EXPOSE 80

# 启动 Nginx
CMD ["nginx", "-g", "daemon off;"]
