/*************************************************************************
 *
 * Copyright (c) 2016 Qt Group Plc.
 * All rights reserved.
 *
 * See the LICENSE.txt file shipped along with this file for the license.
 *
 *************************************************************************/

#include <QEvent>
#include <QApplication>
#include <QMouseEvent>

#include "masterbutton.h"

MasterButton::MasterButton(QString txt, QPushButton *slaveButton, QPushButton *parent) :
    QPushButton(txt, parent), slave(slaveButton)
{
}

bool MasterButton::event(QEvent *event)
{
    if (QEvent::MouseButtonPress <= event->type() && event->type() <= QEvent::KeyRelease)
        qApp->postEvent(slave, new QMouseEvent(*static_cast<QMouseEvent*>(event)));
    return QPushButton::event(event);
}
