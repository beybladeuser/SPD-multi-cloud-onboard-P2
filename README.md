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
  
# Azure setup and run
in azure its complitly diferent so for simplicity sake just follow the following tutorial:
https://www.youtube.com/watch?v=0wWjGV3zva4&ab_channel=GLUGMVIT

a protip is that whatever you commit to this repo, azure will only update after the github action is complete, as its that what releases the current commit into the web app, and that takes a while
  
  [part one]: https://github.com/beybladeuser/SPD-multi-cloud-onboard
