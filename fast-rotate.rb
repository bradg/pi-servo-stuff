servos = File.open("/dev/servoblaster", 'w')

min = 6
max = 95
speed = 0.5
while true
  servos.puts "6=#{min}%"
  servos.flush
  sleep(speed)
  servos.puts "6=#{max}%"
  servos.flush
  sleep(speed)
end
