FROM registry.fedoraproject.org/fedora:33

RUN yum update -y; yum clean all
RUN yum install -y docker
RUN yum -y install \
    texlive-collection-latexrecommended \
    texlive-collection-fontsrecommended \
    texlive-collection-pictures \
    texlive-collection-science \
    texlive-collection-langcyrillic \
    texlive-listingsutf8
RUN yum install -y texlive texlive-latex texlive-babel texlive-cyrillic
RUN yum -y install texlive-raleway
# WORKDIR ~/Desktop/resume/

WORKDIR app/
COPY Minimal-CV/icons icons
COPY Minimal-CV/images app/images
COPY Minimal-CV/images/image.tex app/images/image.tex
COPY Minimal-CV/images/IMG_3544.png images/IMG_3544.png
COPY Minimal-CV/images/image.tex images/image.tex
COPY Minimal-CV/flags flags
COPY Minimal-CV/main.tex app/main.tex
COPY build.sh app/build.sh

#WORKDIR app/

CMD ["pdflatex", "-interaction=nonstopmode", "./app/main.tex"]

# CMD ["bash", "app/build.sh"]






