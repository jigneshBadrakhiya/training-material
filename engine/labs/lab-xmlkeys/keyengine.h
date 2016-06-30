/*************************************************************************
 *
 * Copyright (c) 2016 Qt Group Plc.
 * All rights reserved.
 *
 * See the LICENSE.txt file shipped along with this file for the license.
 *
 *************************************************************************/

#ifndef KEYENGINE_H
#define KEYENGINE_H

#include <QtCore>

class KeyEngine : public QObject
{
    Q_OBJECT
public:
    explicit KeyEngine(QObject *parent = 0);
    void setValue(const QString& key, const QString& value);
    QString value(const QString& key) const;
    QStringList keys() const;
    bool contains(const QString &key) const;
    void remove(const QString& key);
    void clear();
    void dump();
signals:
    void keysChanged(const QString& key);
    void keysCleared();
private:
    QMap<QString, QString> m_data;    
};

#endif // KEYENGINE_H
