docker stop phantom_echarts 
docker rm phantom_echarts
docker rmi phantom_echarts
docker build -t phantom_echarts .
docker run -d --name phantom_echarts -p 6666:6666 --restart always phantom_echarts