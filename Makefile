.PHONY: clean watch build

OUTPUT_DIR=build
TIMESTAMP := $(shell date +%Y%m%d_%H%M%S)
OUTPUT_NAME := YiboWei_CV_$(TIMESTAMP).pdf

TEX_FILES := $(shell find . -name "*.tex" -type f)

all: build

build: $(TEX_FILES)
	latexmk -pdf -output-directory=$(OUTPUT_DIR) main.tex
	mv $(OUTPUT_DIR)/main.pdf $(OUTPUT_DIR)/$(OUTPUT_NAME)

watch: $(TEX_FILES)
	latexmk -pdf -output-directory=$(OUTPUT_DIR) -pvc main.tex

clean:
	rm -rf $(OUTPUT_DIR)
