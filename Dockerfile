# 基于镜像基础
FROM python:3.8
  
# 安装GL
RUN apt-get update
RUN apt install libgl1-mesa-glx --assume-yes
# 设置代码文件夹工作目录 /app
WORKDIR /app
  
# 复制当前代码文件到容器中 /app
ADD . /app

RUN python -m pip install --upgrade pip
  
# 清华：https://pypi.tuna.tsinghua.edu.cn/simple
# 阿里云：http://mirrors.aliyun.com/pypi/simple/
# 中国科技大学 https://pypi.mirrors.ustc.edu.cn/simple/
# 华中理工大学：http://pypi.hustunique.com/
# 山东理工大学：http://pypi.sdutlinux.org/ 
# 豆瓣：http://pypi.douban.com/simple/
# 安装所需的包
RUN pip install  --no-cache-dir  -r requirements.txt -i https://mirrors.aliyun.com/pypi/simple/
  
# Run app.py when the container launches
CMD ["python", "app.py"]