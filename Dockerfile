FROM python:3.6.5
LABEL author='jeffery' email='jeffery_cpu@163.com'
ENV requirements="requirements.txt" wd="/dataManager" \
nginx_conf="/etc/nginx/sites-available" DEBIAN_FRONTEND="noninteractive"
WORKDIR $wd
COPY './' $wd
RUN apt-get update && apt-get install --assume-yes apt-utils && \
apt-get -y --allow-unauthenticated --assume-yes upgrade && \
apt-get install -y --assume-yes nginx && cp -f default $nginx_conf/default
RUN mkdir -p /root/.pip && cp -f pip.conf /root/.pip/pip.conf && pip install -r $requirements
EXPOSE 15008
#CMD /bin/bash
ENTRYPOINT ["/bin/sh", "start.sh"]
