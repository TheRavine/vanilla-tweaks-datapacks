extract:
	bash extract-datapacks.sh *.zip
	rm *.zip

clean:
	find . -type d \! -name '.*' -maxdepth 1 -print0 | xargs -0 rm -r

.PHONY: clean extract
