/*************************************************************************
 *
 * Copyright (c) 2016 Qt Group Plc.
 * All rights reserved.
 *
 * See the LICENSE.txt file shipped along with this file for the license.
 *
 *************************************************************************/

#ifndef MYTHREAD_H
#define MYTHREAD_H

#include <QThread>

class Sender;
class Receiver;

class MyThread : public QThread
{
    Q_OBJECT
public:
    explicit MyThread(Sender *senderArg, QObject *parent = 0);
    ~MyThread();

protected:
    void run() Q_DECL_OVERRIDE;

private:
    Sender *m_sender;
};

#endif // MYTHREAD_H
