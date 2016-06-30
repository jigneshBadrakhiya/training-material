/*************************************************************************
 *
 * Copyright (c) 2016 Qt Group Plc.
 * All rights reserved.
 *
 * See the LICENSE.txt file shipped along with this file for the license.
 *
 *************************************************************************/

#ifndef TIMER_H
#define TIMER_H

#include <QObject>

class QTimer;

class Timer : public QObject
{
    Q_OBJECT
    Q_PROPERTY( int interval READ interval WRITE setInterval NOTIFY intervalChanged )

public:
    explicit Timer( QObject* parent = 0 );

    void setInterval( int msec );
    int interval();

signals:
    void timeout();
    void intervalChanged();

private:
    QTimer* m_timer;
};

#endif // TIMER_H
