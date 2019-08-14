echo "yes" | python manage.py collectstatic -c
service nginx start
uwsgi uwsgi.ini