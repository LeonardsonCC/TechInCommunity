#!/bin/bash

echo "Iniciando build..."

LOCATION="$(pwd)/buildApk"
APK_TOOL="$LOCATION/apktool.jar"
APP="$LOCATION/app"
BUILD_PATH="$LOCATION/builds"
IMAGES_PATH="$(pwd)/public/images"
STORE_ID=$1
APP_PACKAGE=$2
APP_NAME=$3
LOGO_NAME=$4

if [ -d $APP ]; then
    sed -i "s/\"supermarket_id\":\".*\"/\"supermarket_id\":\"$STORE_ID\"/" "$APP/assets/flutter_assets/assets/config.json"
    sed -i "s/android:label=\".*\"/android:label=\"$APP_NAME\"/" "$APP/AndroidManifest.xml"
    sed -i "s/package=\".*\"/package=\"$APP_PACKAGE\"/" "$APP/AndroidManifest.xml"

    mobicon "$IMAGES_PATH/$LOGO_NAME" -p=android -o="$APP/res/"
    echo "ID do mercado alterado"
fi

if [ ! -d "$BUILD_PATH" ]; then
    mkdir $BUILD_PATH
fi
echo "Iniciando compilação da APK"
java -jar "$APK_TOOL" b $APP -o "$BUILD_PATH/app_$STORE_ID.apk"
echo "Compilação finalizada"

echo "Gerando chaves para assinatura"
if [ -f "$LOCATION/keystore.jks" ]; then
    rm "$LOCATION/keystore.jks"
fi 
keytool -genkey -alias supermarket \
    -keyalg RSA -keystore "$LOCATION/keystore.jks" \
    -dname "CN=Supermarket Store, OU=JavaSoft, O=Moon, L=Cupertino, S=California, C=BR" \
    -storepass passwordtop -keypass passwordtop

echo "Assinando apk com a chave"
jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore "$LOCATION/keystore.jks" -storepass "passwordtop" -keypass "passwordtop" "$BUILD_PATH/app_$STORE_ID.apk" supermarket
echo "Apk assinado"

echo "Build finalizado"
