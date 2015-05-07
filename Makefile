all:	ru/LC_MESSAGES/dialogs.mo

ru/LC_MESSAGES/dialogs.mo: ru.po
	mkdir -p ru/LC_MESSAGES/
	pymsgfmt -o $@ $<

clean:
	rm -f ru.mo
	rm -rf ru
