all: install before_script script

install:
	bundle install
	pip install -r requirements.txt

before_script:
	ansible --version
	ansible-lint --version
	python --version
	rubocop --version
	ruby --version

script:
	bundle exec rubocop -ES
	ansible-lint -pv site.yml
	# bundle exec kitchen test
