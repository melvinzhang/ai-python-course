main:
	python3 src/$@.py

cliff_walking:
	python3 src/$@.py

maze:
	python3 src/$@.py

setup-linux:
	rm src/MalmoPython.so
	ln -s ../lib/x86-64_linux/MalmoPython.so src/MalmoPython.so

setup-macos:
	rm src/MalmoPython.so
	ln -s ../lib/x86-64_macos/MalmoPython.so src/MalmoPython.so

ai-python-workshop.zip:
	mkdir -p ai-python-workshop/src
	cp \
	  lib/x86-64_macos/MalmoPython.so \
	  src/malmopy.py \
	  src/movement.py \
	  src/reacting.py \
	  src/patrol.py \
	  ai-python-workshop/src
	cp -r schemas missions slides ai-python-workshop
	cp lccl-workshop/malmo .
	zip $@ -r ai-python-workshop malmo
	rm -rvf ai-python-workshop malmo
