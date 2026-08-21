#POC Portifolio.
Sample app flast to portifolio DEVOPS.

python 3.8.0
uwsgi --socket 0.0.0.0:5000 --protocol=http -w wsgi:app<br>
uwsgi --ini myproject.ini
##
CMD ["python3", "main.py"]git:
 git clone git@gitlab.com:dev3126/flask.git
 git clone git@gitlab.com:dev3126/api-flask.git
###
```sh
/asset/bin/python main.py
/asset/bin/uwsgi --socket 0.0.0.0:5000 --protocol=http -w wsgi:app
```
TODO:
docker-compose
 