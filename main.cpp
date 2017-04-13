#include <QGuiApplication>
#include <QQmlApplicationEngine>

//int main(int argc, char *argv[])
//{
//    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
//    QGuiApplication app(argc, argv);

//    QQmlApplicationEngine engine;
//    engine.load(QUrl(QLatin1String("qrc:/main.qml")));

//    return app.exec();
//}

int run_main(int argc, char *argv[]);

int main(int argc, char *argv[]) {
  return run_main(argc, argv);
}

