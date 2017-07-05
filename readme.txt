1. copy war file to destination directory, for example: /opt/witvan/recruit/build/libs
2. copy shell script "recruit" to /etc/init.d, this will create a service with name "recruit"
3. if you use the example path in step 1, then nothing need to change in shell script, otherwise please update the shell script to set the correct path
4. mikdir for logs: /opt/witvan/logs
5. start service by running command: service recruit start
6. the application runs at port 6073, please setup your reverse proxy service to redirect "http://emc.witvan.com" to "localhost:6073"

nginx setting(updated on 5th July, add cache for static resource):

server {
    listen 80;
    server_name emc.witvan.com;
    index index.html;
    location /{
        proxy_pass http://127.0.0.1:6073;
        proxy_set_header        Host $host;
        proxy_set_header        X-Real-IP $remote_addr;
        proxy_set_header        X-Forwarded-For $proxy_add_x_forwarded_for;
    }
    location ^~/jobs/{
        root /opt/data;
    }
}

notice:
create directory /opt/data/jobs, then all the html pages for upcoming campaigns should put in this directory. For example, if a new page xxx.html is added to this folder, then the url for this page is http://emc.witvan.com/jobs/xxx.html

Please follow the following SDK integration direction for newly added html pages:

1. Add tracking and wechat oauth script to new pages:
<script src="http://resource.witvan.com/files/wechat/jquery-2.1.1.js"></script>
<script src="http://res.wx.qq.com/open/js/jweixin-1.2.0.js"></script>
<script src="http://resource.witvan.com/img/js/oauth.js"></script>
<script src="http://resource.witvan.com/img/js/track.js"></script>

2. add the following script in script tag of body, change variables accordingly:

window.job = {title: "EMC Jobs Jun", jobId: "JUN"}; //used for tracking, title: name of campaign, jobId: id of campaign
//wechatData used for wechat sharing, title for the sharing title, description for sharing summary, imgUrl for sharing cover image
window.wechatData = {
  title: "未来已来 你来不来",
  description: "DellEMC 欢迎您！",
  imgUrl: "http://resource.witvan.com/img/emc/EMC_building.jpg"
};

3. Please add jobId parameter to  the final link for distribution, e.g. http://emc.witvan.com/jobs/xxx.html?jobId=xxx
