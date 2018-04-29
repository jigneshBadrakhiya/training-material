/*************************************************************************
 *
 * Copyright (c) 2018 Qt Company
 * All rights reserved.
 *
 * See the LICENSE.txt file shipped along with this file for the license.
 *
 *************************************************************************/

#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "ellipseitem.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    qmlRegisterType<EllipseItem>("ShapesOriginal", 2, 0, "Ellipse");

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/ellipse2.qml")));
    return app.exec();
}
