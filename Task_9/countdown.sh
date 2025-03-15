Countdown()
{
 echo "please enter a number"
 read num
 while [ $num -ge 0 ]
 do
  echo "$num"
  sleep 1
  ((num--))
 done
 echo "Time's up"
}

Countdown
