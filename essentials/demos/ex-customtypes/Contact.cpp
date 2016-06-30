/*************************************************************************
 *
 * Copyright (c) 2016 Qt Group Plc.
 * All rights reserved.
 *
 * See the LICENSE.txt file shipped along with this file for the license.
 *
 *************************************************************************/

#include "Contact.h"

Contact::Contact()
{
}

void Contact::setName(const QString &name)
{
    if ( m_name != name )
        m_name = name;
}

QString Contact::name() const
{
    return m_name;
}
