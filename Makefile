all:	ru/LC_MESSAGES/dialogs.mo

messages.pot: dialogs.py
	xgettext -L python -o $@ $<

new_ru.po: messages.pot ru.po
	msgmerge ru.po messages.pot > $@

ru/LC_MESSAGES/dialogs.mo: new_ru.po
	mkdir -p ru/LC_MESSAGES/
	pymsgfmt -o $@ $<

clean:
	rm -f new_ru.po messages.pot
	rm -rf ru
