/*************************************************************************
 *
 * Copyright (c) 2016 Qt Group Plc.
 * All rights reserved.
 *
 * See the LICENSE.txt file shipped along with this file for the license.
 *
 *************************************************************************/

#include <QCoreApplication>
#include "Contact.h"
#include <QVariant>
#include <QDebug>

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    Contact contact;
    contact.setName("Peter");

    const QVariant variant = QVariant::fromValue(contact);

    const Contact cotherContact = variant.value<Contact>();
    qDebug() << cotherContact.name();
    qDebug() << variant.typeName();

    return 0;
}

