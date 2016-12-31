#ifndef DUMMY_H
#define DUMMY_H

#include <QObject>

class Dummy : public QObject
{
    Q_OBJECT
public:
    explicit Dummy(QObject *parent = 0);

signals:

public slots:
};

#endif // DUMMY_H