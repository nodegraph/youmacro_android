QT += qml quick

CONFIG += c++11

SOURCES += main.cpp

RESOURCES += qml.qrc

INCLUDEPATH += D:/src/ngsinternal/src/apps/robodownloader/mainlib

# Our libs dir.
MY_LIBS = "D:/a1/install/lib"

# Make the QtCreator app link to our mainlib.
LIBS += -L$${MY_LIBS}\
        -lngs_mainlib

# We need to manually bundle in our libs.
# QtCreator can't detect these because it's indirectly.
ANDROID_EXTRA_LIBS += \
    $${MY_LIBS}/libngs_comms.so\
    $${MY_LIBS}/libngs_compshapes.so\
    $${MY_LIBS}/libngs_computes.so\
    $${MY_LIBS}/libngs_device.so\
    $${MY_LIBS}/libngs_entities.so\
    $${MY_LIBS}/libngs_glewhelper.so\
    $${MY_LIBS}/libngs_gui.so\
    $${MY_LIBS}/libngs_guicomputes.so\
    $${MY_LIBS}/libngs_half.so\
    $${MY_LIBS}/libngs_interactions.so\
    $${MY_LIBS}/libngs_mainlib.so\
    $${MY_LIBS}/libngs_memoryallocator.so\
    $${MY_LIBS}/libngs_memorytracker.so\
    $${MY_LIBS}/libngs_objectmodel.so\
    $${MY_LIBS}/libngs_qmqtt.so\
    $${MY_LIBS}/libngs_quick.so\
    $${MY_LIBS}/libngs_resources.so\
    $${MY_LIBS}/libngs_utils.so\
    \
    $${MY_LIBS}/libsodium.so\
    $${MY_LIBS}/libssl.so\
    $${MY_LIBS}/libcrypto.so\

# The Qt android lib dir.
EXT_DIR = "D:/installs/android/Qt5.8.0/5.8/android_armv7/lib"

# We need to manually bundle in our qt libs.
# QtCreator can't detect these because the QtCreator app is using hardly anything.
ANDROID_EXTRA_LIBS += \
    $${EXT_DIR}/libQt5Core.so\
    $${EXT_DIR}/libQt5Gui.so\
    $${EXT_DIR}/libQt5Network.so\
    $${EXT_DIR}/libQt5OpenGL.so\
    $${EXT_DIR}/libQt5Qml.so\
    $${EXT_DIR}/libQt5Quick.so\
    $${EXT_DIR}/libQt5Widgets.so\
    $${EXT_DIR}/libQt5WebSockets.so\
    $${EXT_DIR}/libQt5AndroidExtras.so\



# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    android/AndroidManifest.xml \
    android/gradle/wrapper/gradle-wrapper.jar \
    android/gradlew \
    android/res/values/libs.xml \
    android/build.gradle \
    android/gradle/wrapper/gradle-wrapper.properties \
    android/gradlew.bat \
    android/AndroidManifest.xml \
    android/res/values/libs.xml \
    android/build.gradle

ANDROID_PACKAGE_SOURCE_DIR = $$PWD/android
