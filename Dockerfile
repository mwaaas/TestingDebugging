FROM openjdk:8
COPY . /tmp
WORKDIR /tmp

RUN mkdir -p out \
    && javac -d ./out src/*java \
    && cp MANIFEST.MF ./out \
    && cd ./out \
    && jar cvmf MANIFEST.MF pass.jar  *
RUN echo $PWD
CMD ["java", "-jar", "out/pass.jar"]
