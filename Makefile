.PHONY: cpp
cpp:
	@echo
	batcat cpp/main.cpp
	g++ cpp/main.cpp; ./a.out
	@echo

.PHONY: java
java:
	@echo
	batcat java/main.java
	javac java/main.java; cd java; java Main
	@echo

.PHONY: js
js:
	@echo
	batcat js/main.js
	node js/main.js
	@echo

.PHONY: python
python:
	@echo
	batcat python/main.py
	python3 python/main.py
	@echo

.PHONY: ruby
ruby:
	@echo
	batcat ruby/main.rb
	ruby ruby/main.rb
	@echo
