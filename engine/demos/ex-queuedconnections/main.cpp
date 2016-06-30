/*************************************************************************
 *
 * Copyright (c) 2016 Qt Group Plc.
 * All rights reserved.
 *
 * See the LICENSE.txt file shipped along with this file for the license.
 *
 *************************************************************************/

#include <QApplication>
#include <QMetaType>
#include "data.h"
#include "sender.h"
#include "mythread.h"

int main( int argc, char** argv ) {
    QApplication app( argc, argv );

    qMetaTypeId<Data>();

    Sender sender;
    MyThread thread(&sender);
    thread.start();

    sender.show();
    return app.exec();
}

