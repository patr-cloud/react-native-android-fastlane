FROM reactnativecommunity/react-native-android

RUN apt update

RUN apt remove -y openjdk-17*
RUN apt install -y openjdk-11-jdk
ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64

ENV NODE_OPTIONS=--openssl-legacy-provider

RUN gem install fastlane
