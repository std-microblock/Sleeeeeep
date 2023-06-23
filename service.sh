while true; do
  current_time=$(date +%H:%M)
  
  if [[ "$current_time" > "22:56" || "$current_time" < "02:20" ]]; then
    su -lp 2000 -c "cmd notification post -S bigtext -t 'Sleep!' 'sleep' 'It is about to sleep now; your phone will power off in 4 minutes.'"
    sleep 180
    su -lp 2000 -c "cmd notification post -S bigtext -t 'Sleep!' 'sleep' 'It is time to sleep now; your phone will power off in 60 seconds. Good night~'"
    sleep 60
    svc power shutdown
  fi
  
  sleep 5
done