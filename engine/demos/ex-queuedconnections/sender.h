/*************************************************************************
 *
 * Copyright (c) 2016 Qt Group Plc.
 * All rights reserved.
 *
 * See the LICENSE.txt file shipped along with this file for the license.
 *
 *************************************************************************/

#ifndef SENDER_H
#define SENDER_H

#include <QPushButton>

class Data;

class Sender : public QPushButton
{
    Q_OBJECT
public:
    explicit Sender(QWidget *parent = 0);
    
signals:
    void data(const Data &);

protected slots:
    void sendData();

private:
    int m_integer;
};

#endif // SENDER_H
