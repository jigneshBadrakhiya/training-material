/*************************************************************************
 *
 * Copyright (c) 2016 Qt Group Plc.
 * All rights reserved.
 *
 * See the LICENSE.txt file shipped along with this file for the license.
 *
 *************************************************************************/

#ifndef BARGRAPHDELEGATE_H
#define BARGRAPHDELEGATE_H

#include <QtWidgets>

class BarGraphDelegate : public QAbstractItemDelegate
{
public:
    explicit BarGraphDelegate(QObject *parent = 0);
    void paint(QPainter *painter, const QStyleOptionViewItem &option, const QModelIndex &index) const Q_DECL_OVERRIDE;
    QSize sizeHint(const QStyleOptionViewItem &option, const QModelIndex &index) const Q_DECL_OVERRIDE;
};

#endif // BARGRAPHDELEGATE_H