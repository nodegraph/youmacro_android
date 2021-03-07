

// QtCreator will automatically packaged deploy the QML modules it finds it its projects QML files.
// However because we're only using QtCreator to package and deploy our android app,
// we need to make sure to add all the QML modules that we use here.

import QtQuick 2.7

import QtQuick.Controls 1.5
import QtQuick.Controls.Styles 1.4
import QtQuick.Controls.Private 1.0

import QtQuick.Layouts 1.3
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2

import QtQuick.Extras 1.4
import QtQuick.Extras.Private 1.1
//import QtQuick.Extras.Private.CppUtils 1.1


// This is our fake main qml file that is only used to
// trick QtCreator in packaging our QML modules for us.

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
}
