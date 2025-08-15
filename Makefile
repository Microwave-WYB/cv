.PHONY: clean watch build

OUTPUT_DIR=build

TEX_FILES := $(shell find . -name "*.tex" -type f)

all: build

build: $(TEX_FILES)
	latexmk -pdf -output-directory=$(OUTPUT_DIR) main.tex

watch: $(TEX_FILES)
	latexmk -pdf -output-directory=$(OUTPUT_DIR) -pvc main.tex

clean:
	rm -rf $(OUTPUT_DIR)
