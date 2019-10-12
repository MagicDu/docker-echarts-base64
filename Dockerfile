FROM centos
LABEL johndo "276052291@qq.com"
COPY echartsconvert .
COPY chinese /usr/share/fonts/
RUN yum -y install fontconfig&&chmod -R 777 phantomjs&&yum -y install ttmkfdir&&ttmkfdir -e /usr/share/X11/fonts/encodings/encodings.dir&&fc-cache
EXPOSE 6666
CMD sh configfont.sh
