# SPD-multi-cloud-onboard-P2

## Set up in cloud
this is assuming that you added the ssh keys like its specified in [part one]
1. create a virtual env
  ```
  python -m venv Django
  ```
1. enter it
  ```
  source Django/bin/activate
  ```
1. then generate the ssh key and add it to your github profile
1. type
  ```
  git clone <ssh url>
  ```
  ```
  cd SPD-multi-cloud-onboard-P2
  ```
  ```
  make install
  ```
  ```
  cd spd_final_project_p2
  ```
  ```
  python3 manage.py makemigrations
  ```
  ```
  python3 manage.py migrate
  ```
  ```
  python3 manage.py loaddata fixtures.json
  ```
### runing in AWS and GDP
1. run the server
  ```
  python3 manage.py runserver 0.0.0.0:8000
  ```
1. to the turn off you can "type" ctrl c or type the following
  ```
  ps -aux | less
  ```
  find the pid of the runserver running on port 8000 then
  ```
  kill <processID>
  ```
  
  ### runing in Azure
1. start the web app
  ```
  cd ..
  ```
  ```
  az webapp up --sku B1 --name spd-final-project-p2
  ```
2. go to spd-final-project-p2 configurations>general settings and type the following in the Startup Command field:
  ```
  gunicorn --bind=0.0.0.0 --timeout 600 spd_final_project_p2.wsgi
  ```
4. hust go to the given url
  
  [part one]: https://github.com/beybladeuser/SPD-multi-cloud-onboard
