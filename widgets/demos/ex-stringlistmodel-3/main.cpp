/*************************************************************************
*
* Copyright (c) 2016 Qt Company
* All rights reserved.
*
* See the LICENSE.txt file shipped along with this file for the license.
*
*************************************************************************/

#include <QtWidgets>

class StringListModel : public QAbstractListModel
{
    Q_OBJECT
public:
    StringListModel(const QStringList& input, QObject *parent = Q_NULLPTR)
        : QAbstractListModel(parent), _input(input) {}


    int rowCount(const QModelIndex &parent = QModelIndex()) const
    {
        if( parent.isValid() ) {
            return 0;
        }
        return _input.count();
    }

    QVariant data(const QModelIndex &index, int role) const
    {
        if (!index.isValid()) {
            return QVariant();
        }

        if (index.row() < 0 || index.row() >= _input.size()) {
            return QVariant();
        }

        if (role == Qt::DisplayRole || role == Qt::EditRole) {
            return QVariant(_input.at(index.row()));
        }
        return QVariant();
    }

    QVariant headerData( int section, Qt::Orientation orientation, int role = Qt::DisplayRole ) const
    {
        if (role != Qt::DisplayRole) {
            return QVariant();
        }

        if (orientation == Qt::Horizontal) {
            Q_ASSERT( section == 0 );
            return QString("Country");
        } else {
            // vertical rows
            return QString("Country %1").arg(section);
        }
    }

    // --------------------------------------------------------------------
    // START_CHANGES
        Qt::ItemFlags flags(const QModelIndex &index) const
        {
            if (!index.isValid()) {
                return QAbstractItemModel::flags(index);
            }

            return QAbstractItemModel::flags(index) | Qt::ItemIsEditable;
        }

        bool setData(const QModelIndex &index, const QVariant &value, int role)
        {
            if(!index.isValid()) {
                return false;
            }
            if (role == Qt::EditRole) {
                _input.replace(index.row(), value.toString());
                emit dataChanged(index, index);
                return true;
            }
            return false;
        }
    // END_CHANGES
    // --------------------------------------------------------------------

private:
    QStringList _input;
};

int main(int argc, char *argv[]) {
    QApplication app(argc, argv);

    QStringList input;
    input << "Denmark" << "Norway" << "Sweden" << "USA" << "Poland";
    StringListModel *model = new StringListModel(input);


    QListView *list = new QListView;
    list->setModel(model);
    list->setWindowTitle("QListView");
    list->show();

    QTreeView *tree = new QTreeView;
    tree->setModel(model);
    tree->setWindowTitle("QTreeView");
    tree->show();

    QTableView *table = new QTableView;
    table->setModel(model);
    table->setWindowTitle("QTableView");

    table->show();

    return app.exec();
}

#include "main.moc"






