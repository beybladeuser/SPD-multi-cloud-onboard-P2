# SPD-multi-cloud-onboard-P2

# Set up in cloud
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
  
  
