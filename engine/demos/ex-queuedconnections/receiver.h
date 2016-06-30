/*************************************************************************
 *
 * Copyright (c) 2016 Qt Group Plc.
 * All rights reserved.
 *
 * See the LICENSE.txt file shipped along with this file for the license.
 *
 *************************************************************************/

#ifndef RECEIVER_H
#define RECEIVER_H

#include <QObject>

class Data;

class Receiver : public QObject
{
    Q_OBJECT
public:
    explicit Receiver(QObject *parent = 0);
    
public Q_SLOTS:
    void data(const Data& data);

};

#endif // RECEIVER_H
