TEMPLATE=app
SOURCES = main.cpp 
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets
QMAKE_CXXFLAGS += -std=c++0x
CONFIG += c++11
