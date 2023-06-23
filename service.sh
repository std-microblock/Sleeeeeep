while true; do
  current_time=$(date +%H:%M)
  
  if [[ "$current_time" > "23:00" || "$current_time" < "02:30" ]]; then
    su -lp 2000 -c "cmd notification post -S bigtext -t 'Sleep!' 'sleep' 'It is time to sleep now; your phone will power off in 60 seconds. Good night~'"
    sleep 60
    svc power shutdown
    break
  fi
  
  sleep 5
done