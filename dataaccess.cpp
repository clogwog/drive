#include "dataaccess.h"

DataAccess::DataAccess(QObject *parent) : QObject(parent)
{
    m_ToDoItems = new QQmlObjectListModel<ToDoItem> (this);

    //------
    ToDoItem* list1 = new ToDoItem(m_ToDoItems);
    list1->set_done(true);
    list1->set_description("bla bla");
    m_ToDoItems->append(list1);


    list1 = new ToDoItem(m_ToDoItems);
    list1->set_done(false);
    list1->set_description("finish drawing");
    m_ToDoItems->append(list1);

    //-----

    m_CurrentTheme = new Theme();


}

void DataAccess::addNewTodo(int index)
{
    ToDoItem* newTodo = new ToDoItem(m_ToDoItems);

    if ( index < 0 || index > m_ToDoItems->count() - 1 )
        m_ToDoItems->append(newTodo);
    else
    {
        m_ToDoItems->insert(index,newTodo);
    }

}

void DataAccess::deleteDoneTodos()
{
    for( int i = 0 ; i < m_ToDoItems->size();)
    {
        if (m_ToDoItems->at(i)->get_done() )
            m_ToDoItems->remove(m_ToDoItems->at(i));
        else
             ++i;
    }
}
