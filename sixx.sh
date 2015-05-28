#apt-get install sox
#apt-get install libsox-ftm-mp3
rm -rf t*
rm -rf o*
#info
sox --i music.wav
#max volume
sox music.wav -n stat -v >& vc
sox -v 1.2 music.wav tmusicPoMaxGlosnosci.wav
#costam poprawia
sox tmusicPoMaxGlosnosci.wav -b 16 tPoPoprawie.wav
#nie pamietam
#sox -v 2.0 tPoPoprawie.wav tNie.wav
#wycina kawalki
sox tPoPoprawie.wav out1.wav trim 00:00:30 00:00:10
sox tPoPoprawie.wav out2.wav trim 00:00:40 00:00:10
sox tPoPoprawie.wav out3.wav trim 00:00:50 00:00:10
sox tPoPoprawie.wav out4.wav trim 00:00:60 00:00:10
#speed
sox out1.wav oSpeed1.wav speed 1.4
sox out2.wav oSpeed2.wav speed 2.2
sox out3.wav oSpeed3.wav speed 0.6
#laczy kawalki 
sox oSpeed1.wav oSpeed2.wav tcaly.wav
sox tcaly.wav oSpeed3.wav ocaly.wav
sox ocaly.wav oocaly.mp3
	#sox caly.wav calys.wav speed 1.5
#rewerse
sox out4.wav o4tuo.mp3 reverse speed 1.4
sox oocaly.mp3 o4tuo.mp3 ttcaly.mp3

sox -r 44100 -c 2 -n new.mp3 synth 3 sine 300-3300
sox new.mp3 ttcaly.mp3 caly.mp3
sox caly.mp3 caly.wav
#padsp play caly.mp3
