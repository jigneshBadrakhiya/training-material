/*************************************************************************
 *
 * Copyright (c) 2016 Qt Group Plc.
 * All rights reserved.
 *
 * See the LICENSE.txt file shipped along with this file for the license.
 *
 *************************************************************************/

#ifndef CITYMODEL_H
#define CITYMODEL_H

#include <QtGui/QStandardItemModel>

#include "cityengine.h"

class CityModel : public QStandardItemModel
{
    Q_OBJECT
public:
    explicit CityModel(QObject *parent = 0);

private:
    void setupModel();
};

#endif // CITYMODEL_H
