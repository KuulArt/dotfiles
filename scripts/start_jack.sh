#!/bin/bash

jack_control start
sudo schedtool -R -p 70 `pidof jackdbus`
jack_control eps realtime true
jack_control ds alsa
jack_control dps device hw:PCH
jack_control dps rate 44200
jack_control dps nperiods 2
jack_control dps period 256
jack_bufsize 256
sleep 10
qmidiroute ~/All2MIDI1.qmr &
sleep 10
sudo modprobe snd_virmidi midi devs=1
