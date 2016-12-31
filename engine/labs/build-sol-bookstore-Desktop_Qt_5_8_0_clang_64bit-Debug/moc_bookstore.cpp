/****************************************************************************
** Meta object code from reading C++ file 'bookstore.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.8.0)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../sol-bookstore/bookstore.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'bookstore.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.8.0. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_BookStore_t {
    QByteArrayData data[10];
    char stringdata0[94];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_BookStore_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_BookStore_t qt_meta_stringdata_BookStore = {
    {
QT_MOC_LITERAL(0, 0, 9), // "BookStore"
QT_MOC_LITERAL(1, 10, 13), // "authorChanged"
QT_MOC_LITERAL(2, 24, 0), // ""
QT_MOC_LITERAL(3, 25, 3), // "row"
QT_MOC_LITERAL(4, 29, 9), // "addAuthor"
QT_MOC_LITERAL(5, 39, 12), // "removeAuthor"
QT_MOC_LITERAL(6, 52, 7), // "addBook"
QT_MOC_LITERAL(7, 60, 10), // "removeBook"
QT_MOC_LITERAL(8, 71, 12), // "authorsModel"
QT_MOC_LITERAL(9, 84, 9) // "bookModel"

    },
    "BookStore\0authorChanged\0\0row\0addAuthor\0"
    "removeAuthor\0addBook\0removeBook\0"
    "authorsModel\0bookModel"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_BookStore[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       5,   14, // methods
       2,   50, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // methods: name, argc, parameters, tag, flags
       1,    1,   39,    2, 0x02 /* Public */,
       4,    0,   42,    2, 0x02 /* Public */,
       5,    1,   43,    2, 0x02 /* Public */,
       6,    0,   46,    2, 0x02 /* Public */,
       7,    1,   47,    2, 0x02 /* Public */,

 // methods: parameters
    QMetaType::Void, QMetaType::Int,    3,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Int,    3,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Int,    3,

 // properties: name, type, flags
       8, QMetaType::QObjectStar, 0x00095401,
       9, QMetaType::QObjectStar, 0x00095401,

       0        // eod
};

void BookStore::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        BookStore *_t = static_cast<BookStore *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->authorChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 1: _t->addAuthor(); break;
        case 2: _t->removeAuthor((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 3: _t->addBook(); break;
        case 4: _t->removeBook((*reinterpret_cast< int(*)>(_a[1]))); break;
        default: ;
        }
    }
#ifndef QT_NO_PROPERTIES
    else if (_c == QMetaObject::ReadProperty) {
        BookStore *_t = static_cast<BookStore *>(_o);
        Q_UNUSED(_t)
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast< QObject**>(_v) = _t->authorsModel(); break;
        case 1: *reinterpret_cast< QObject**>(_v) = _t->bookModel(); break;
        default: break;
        }
    } else if (_c == QMetaObject::WriteProperty) {
    } else if (_c == QMetaObject::ResetProperty) {
    }
#endif // QT_NO_PROPERTIES
}

const QMetaObject BookStore::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_BookStore.data,
      qt_meta_data_BookStore,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *BookStore::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *BookStore::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_BookStore.stringdata0))
        return static_cast<void*>(const_cast< BookStore*>(this));
    return QObject::qt_metacast(_clname);
}

int BookStore::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 5)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 5;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 5)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 5;
    }
#ifndef QT_NO_PROPERTIES
   else if (_c == QMetaObject::ReadProperty || _c == QMetaObject::WriteProperty
            || _c == QMetaObject::ResetProperty || _c == QMetaObject::RegisterPropertyMetaType) {
        qt_static_metacall(this, _c, _id, _a);
        _id -= 2;
    } else if (_c == QMetaObject::QueryPropertyDesignable) {
        _id -= 2;
    } else if (_c == QMetaObject::QueryPropertyScriptable) {
        _id -= 2;
    } else if (_c == QMetaObject::QueryPropertyStored) {
        _id -= 2;
    } else if (_c == QMetaObject::QueryPropertyEditable) {
        _id -= 2;
    } else if (_c == QMetaObject::QueryPropertyUser) {
        _id -= 2;
    }
#endif // QT_NO_PROPERTIES
    return _id;
}
QT_END_MOC_NAMESPACE
