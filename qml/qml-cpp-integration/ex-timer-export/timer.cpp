/*************************************************************************
 *
 * Copyright (c) 2018 Qt Company
 * All rights reserved.
 *
 * See the LICENSE.txt file shipped along with this file for the license.
 *
 *************************************************************************/

#include "timer.h"

#include <QDebug>
#include <QTimer>

Timer::Timer(QObject *parent)
    : QObject(parent),
      m_timer(new QTimer(this))
{
    connect(m_timer, &QTimer::timeout, this, &Timer::timeout);
}

void Timer::setInterval(int msec)
{
    if (m_timer->interval() == msec)
        return;
    m_timer->setInterval(msec);
    Q_EMIT intervalChanged();
}

int Timer::interval()
{
    return m_timer->interval();
}

bool Timer::isActive()
{
    return m_timer->isActive();
}

int Timer::randomInterval(int min, int max) const
{
    int range = max - min;
    int msec = min + qrand() % range;
    qDebug() << "Random interval =" << msec << "msecs";
    return msec;
}

void Timer::start()
{
    if (m_timer->isActive())
        return;
    m_timer->start();
    Q_EMIT activeChanged();
}

void Timer::stop()
{
    if (!m_timer->isActive())
        return;
    m_timer->stop();
    Q_EMIT activeChanged();
}
