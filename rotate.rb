servos = File.open("/dev/servoblaster", 'w')

while true
(1..99).step(1) do |angle|
  puts "6=#{angle}%"
  servos.puts "6=#{angle}%"
  servos.flush
  sleep(0.01)
end
99.downto(1).to_a.each do |angle|
  puts "6=#{angle}%"
  servos.puts "6=#{angle}%"
  servos.flush
  sleep(0.01)
end
end
