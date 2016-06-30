/*************************************************************************
 *
 * Copyright (c) 2016 Qt Group Plc.
 * All rights reserved.
 *
 * See the LICENSE.txt file shipped along with this file for the license.
 *
 *************************************************************************/

#ifndef RUNTYPE_H
#define RUNTYPE_H

#include <QDialog>

namespace Ui {
    class RunType;
}

class RunType : public QDialog
{
    Q_OBJECT

public:
    enum Type { Server, Client };
    explicit RunType(QWidget *parent = 0);
    Type getRunType();
    ~RunType();

private slots:
    void client();
    void server();

private:
    Ui::RunType *ui;
    Type m_type;
};

#endif // RUNTYPE_H
