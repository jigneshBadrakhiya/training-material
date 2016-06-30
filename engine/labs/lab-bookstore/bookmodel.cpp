/*************************************************************************
 *
 * Copyright (c) 2016 Qt Group Plc.
 * All rights reserved.
 *
 * See the LICENSE.txt file shipped along with this file for the license.
 *
 *************************************************************************/

#include <QtGui>
#include <QtSql>
#include "bookmodel.h"
#include "bookstore.h"

BookModel::BookModel( QObject* parent )
    : QSqlQueryModel( parent )
{
    // Optional step: Insert rows
    // We need the latest index of a row in the book table
    // For simplicity, it can be assumed it is the index of the last row in the book table
    // m_latestBookId = data(...
}

void BookModel::showAuthor( int authorId )
{
    // Step 3: Implement method for loading a given author.
    // The book table contains the following cloumns:
    // id, authorid, title, price, notes
    qDebug("Author Changed: %d", authorId);
}

// Step 5: Allow editing by implementing setData and flags.

bool BookModel::removeRows( int row, int count, const QModelIndex& parent  )
{
    for ( int i=0; i< count; ++i ) {
        QModelIndex primaryKeyIndex = index( row + i, 0 , parent );
        int primaryKey = data( primaryKeyIndex ).toInt();

        QSqlQuery query;
        query.prepare( QString( "DELETE FROM book where id = :id" ) );
        query.bindValue( ":id", primaryKey );
        bool ok = query.exec();
        if ( !ok ) {
            BookStore::reportError( "Error running DELETE command", query.lastError() );
            return false;
        }
        refresh();
    }
    return true;
}

bool BookModel::insertRows( int /*row*/, int count, const QModelIndex &/*parent*/ )
{
    for ( int i=0; i < count; ++i ) {
        QSqlQuery query;
        query.prepare( QString( "INSERT INTO book (id, authorId, title, price, notes) VALUES (:id, :authorId, :title, 1, :notes)" ) );
        query.bindValue( ":id", m_latestBookId + i + 1);
        query.bindValue( ":authorId", m_authorId );
        query.bindValue( ":title", "Title" );
        query.bindValue( ":price", "1.11" );
        query.bindValue( ":notes", "Book notes" );
        bool ok = query.exec();
        if ( !ok ) {
            BookStore::reportError( "Error running INSERT command", query.lastError() );
            return false;
        }
        m_latestBookId = query.lastInsertId().toInt();
        refresh();
    }
    return true;

}

void  BookModel::refresh()
{
    showAuthor( m_authorId );
}
