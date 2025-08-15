.PHONY: clean watch build

BUILD_DIR=build

TEX_FILES := $(shell find . -name "*.tex" -type f)

all: build

build: $(TEX_FILES)
	latexmk -pdf -output-directory=$(BUILD_DIR) main.tex

watch: $(TEX_FILES)
	latexmk -pdf -output-directory=$(BUILD_DIR) -pvc main.tex


clean:
	rm -rf $(BUILD_DIR)
