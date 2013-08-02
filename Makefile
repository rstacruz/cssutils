Readme.md: support/readme-head.md support/docs.md support/readme-foot.md
	cat $^ > $@

support/docs.md: $(shell find sass/*.sass)
	cat $^ | egrep "^\/\/" | sed "s/^\/\/ //g" | sed "s/^\/\///g" >> $@

clean:
	rm support/docs.md Readme.md

.PHONY: clean
