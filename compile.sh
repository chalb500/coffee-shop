#!/bin/bash
SOURCE_FOLDER=[YOUR DESIRED ROOT FOLDER ON YOUR MAC/LINUX FILESYSTEM]
MODULE_FOLDER=$SOURCE_FOLDER/modules

#Compile the coffee module onto the file system
javac \
-d $MODULE_FOLDER/com.example.coffee \
$SOURCE_FOLDER/com.example.coffee/module-info.java \
$SOURCE_FOLDER/com.example.coffee/com/example/coffee/*.java

#Compile the coffee.impl module onto the file system
javac \
--module-path $SOURCE_FOLDER/modules \
-d $MODULE_FOLDER/com.example.coffee.impl \
$SOURCE_FOLDER/com.example.coffee.impl/module-info.java \
$SOURCE_FOLDER/com.example.coffee.impl/com/example/coffee/impl/*.java

#Compile the coffee service module onto the file system
javac \
--module-path $SOURCE_FOLDER/modules \
-d $MODULE_FOLDER/com.example.coffeeservice \
$SOURCE_FOLDER/com.example.coffeeservice/module-info.java \
$SOURCE_FOLDER/com.example.coffeeservice/com/example/coffeeservice/*.java

#Compile the coffee service impl module onto the file system
javac \
--module-path $SOURCE_FOLDER/modules \
-d $MODULE_FOLDER/com.example.coffeeservice.impl \
$SOURCE_FOLDER/com.example.coffeeservice.impl/module-info.java \
$SOURCE_FOLDER/com.example.coffeeservice.impl/com/example/coffeeservice/impl/*.java

#Compile the main module
javac \
--module-path $SOURCE_FOLDER/modules \
-d $MODULE_FOLDER/com.example.main \
$SOURCE_FOLDER/com.example.main/module-info.java \
$SOURCE_FOLDER/com.example.main/com/example/main/Main.java

#Run the main module
java \
--module-path $MODULE_FOLDER \
-m com.example.main/com.example.main.Main
