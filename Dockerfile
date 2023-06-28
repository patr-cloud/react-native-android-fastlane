FROM reactnativecommunity/react-native-android

RUN apt update

RUN apt remove -y openjdk-17*
RUN apt install -y openjdk-11-jdk
RUN export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64

RUN export NODE_OPTIONS=--openssl-legacy-provider

RUN gem install fastlane