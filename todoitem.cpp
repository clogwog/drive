#include "todoitem.h"

ToDoItem::ToDoItem(QObject *parent) : QObject(parent) ,
                                        m_done(false),
                                        m_description("")
{

}
