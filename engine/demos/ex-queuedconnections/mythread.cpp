/*************************************************************************
 *
 * Copyright (c) 2016 Qt Group Plc.
 * All rights reserved.
 *
 * See the LICENSE.txt file shipped along with this file for the license.
 *
 *************************************************************************/

#include <QDebug>

#include "mythread.h"
#include "sender.h"
#include "receiver.h"
#include "data.h"

MyThread::MyThread(Sender *senderArg, QObject *parent) :
    QThread(parent), m_sender(senderArg)
{
    // Anything created here is on the thread creating the MyThread instance, not on the MyThread thread!
    setObjectName("Child thread");
}

MyThread::~MyThread()
{
    qDebug() << "Thread " + objectName() + " destructor called.";
}

void MyThread::run()
{
    QScopedPointer<Receiver> receiver(new Receiver());
    connect(m_sender, &Sender::data, receiver.data(), &Receiver::data);
    QThread::run();
}


