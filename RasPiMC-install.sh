#!/bin/bash

echo "Installing Java 8"
sudo apt install openjdk-8-jdk
echo "Done"
echo "Instaling screen"
sudo apt install screen
echo "Done"
echo "Getting buildtools"
wget https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar
echo "Building latest spigot jar, if you want another version, you can do java -jar BuildTools.jar --rev (version)"
echo "You need to wait some minutes if you have a Pi 2/3"
java -jar BuildTools.jar --rev latest
echo "Done! Now running to generate the server.properties. Then to start the server you can use the start.sh"
sudo rm -r apache-maven-3.6.0
sudo chmod u+x start.sh
sudo rm -r BuildData
sudo rm -r Spigot
sudo rm -r CraftBukkit
sudo rm -r Bukkit
sudo rm -r work
sudo cp spigot*.jar spigot.jar
echo "Goodbye!"
java -jar spigot.jar