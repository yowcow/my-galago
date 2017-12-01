all: Gemfile.lock

Gemfile.lock: Gemfile
	bundle install --path vendor/bundle

roles/%:
	bundle exec -- itamae local \
		--node-json nodes/common.json \
		roles/$*.rb

clean:
	rm -rf Gemfile.lock vendor

.PHONY: all clean
