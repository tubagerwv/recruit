1. copy war file to destination directory, for example: /opt/witvan/recruit/build/libs
2. copy shell script "recruit" to /etc/init.d, this will create a service with name "recruit"
3. if you use the example path in step 1, then nothing need to change in shell script, otherwise please update the shell script to set the correct path
4. mikdir for logs: /opt/witvan/logs
5. start service by running command: service recruit start
6. the application runs at port 6073, please setup your reverse proxy service to redirect "http://emc.witvan.com" to "localhost:6073"
