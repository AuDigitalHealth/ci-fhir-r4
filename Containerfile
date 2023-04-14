FROM eclipse-temurin:8u352-b08-jdk-jammy

# want to cache the update layer while we dev/test this
# RUN apt-get update && apt-get upgrade -y

# install dependencies
RUN apt-get update && apt-get upgrade -y && apt-get install -y curl vim \
    ruby-full build-essential zlib1g-dev && gem install jekyll

#RUN groupadd -r ig_user && useradd -r -g ig_user ig_user

# need to understand why java isn't in path.

RUN mkdir -p /opt/publisher /app && \
    curl -L -o /opt/publisher/publisher.jar https://github.com/HL7/fhir-ig-publisher/releases/download/1.2.19/publisher.jar # &&  chown -R ig_user:ig_user /app /opt/publisher

#USER ig_user

WORKDIR /app

ENTRYPOINT ["java", "-jar", "/opt/publisher/publisher.jar"]
CMD ["-?"]
