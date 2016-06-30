TEMPLATE = app
TARGET = layout
DEPENDPATH += .
INCLUDEPATH += .

# Input
SOURCES += main.cpp

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets
