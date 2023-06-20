#!/bin/bash
# Запускаем контейнер из образа
YOUR_TAG="mydocker"
chmod +x '../Dockerfile'
docker build --tag $YOUR_TAG -f ./Dockerfile .
docker run $YOUR_TAG

# IMAGE_NAME="/interesting_chandrasekhar"
# DOCKERFILE_PATH="./Dockerfile"

# Команда для создания образа
# docker build -t ${IMAGE_NAME} ${DOCKERFILE_PATH}

# chmod +x build_docker_image.sh

# ./build_docker_image.sh

# $YOUR_TAG \
# docker run \
#  -v . \
#docker run -it 21246eee0f33f0a2b8302aa6cba5d1d4ab8f0678a41060954a86c2e1e495bc9f \
#  /bin/bash -c "pdflatex -interaction=nonstopmode main.tex && \
#                 bibtex main && \
#                 pdflatex -interaction=nonstopmode main.tex && \
#                 pdflatex -interaction=nonstopmode main.tex && \
#                 chown $(id -u):$(id -g) main.pdf"

# Удаляем лишние файлы (опционально)
rm -f *.aux *.log *.out *.toc *.bbl *.blg *.ilg *.idx *.ind *.lof *.lot *.nlo *.nls *.synctex.gz *.bcf *.xml
