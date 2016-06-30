/*************************************************************************
 *
 * Copyright (c) 2016 Qt Group Plc.
 * All rights reserved.
 *
 * See the LICENSE.txt file shipped along with this file for the license.
 *
 *************************************************************************/

#ifndef MASTERBUTTON_H
#define MASTERBUTTON_H

#include <QPushButton>

class MasterButton : public QPushButton
{
    Q_OBJECT
public:
    explicit MasterButton(QString txt, QPushButton *slaveButton, QPushButton *parent = 0);

protected:
    bool event(QEvent *event) Q_DECL_OVERRIDE;

private:
    QPushButton* slave;
};

#endif // MASTERBUTTON_H
