/*************************************************************************
 *
 * Copyright (c) 2016 Qt Group Plc.
 * All rights reserved.
 *
 * See the LICENSE.txt file shipped along with this file for the license.
 *
 *************************************************************************/

#include <QDebug>
#include <QThread>

#include "receiver.h"
#include "data.h"

Receiver::Receiver(QObject *parent) :
    QObject(parent)
{
}

void Receiver::data(const Data &data)
{
    qDebug() << "Receiver says: " << data.m_integer << *data.m_pointer << data.m_string;

    thread()->quit();
}

