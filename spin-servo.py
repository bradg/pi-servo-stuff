import RPi.GPIO as GPIO
import time

GPIO.cleanup()
GPIO.setmode(GPIO.BCM)
GPIO.setup(24, GPIO.OUT)

#p = GPIO.PWM(24, 50)

#p.start(0)

try:
	while True:
		print("spin")
		GPIO.output(24,1)
		time.sleep(0.0015)
		GPIO.output(24,0)
		time.sleep(2)

except KeyboardInterrupt:
	pass
#	p.stop()
	GPIO.cleanup()
