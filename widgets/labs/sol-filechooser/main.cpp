/*************************************************************************
 *
 * Copyright (c) 2016 Qt Group Plc.
 * All rights reserved.
 *
 * See the LICENSE.txt file shipped along with this file for the license.
 *
 *************************************************************************/

#include <QtWidgets/QApplication>
#include "filechooser.h"

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);

    FileChooser chooser;
    chooser.show();

    return a.exec();
}
