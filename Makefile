SHELL:= /bin/bash  
ZIP := Thy-$(shell date +"%h-%d-[%H][%M]").zip

EXCLUDE := Makefile LICENSE *.git* *placeholder* *.md*

normal: $(ZIP)

$(ZIP):
	@echo "Creating ZIP: $(ZIP)"
	@zip -r9 "$@" . -x $(EXCLUDE)
	@echo "Done."
