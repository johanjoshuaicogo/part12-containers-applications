import React from 'react'

const Todo = ({ todo, children }) => {

  return (
          <div style={{ display: 'flex', justifyContent: 'space-between', maxWidth: '70%', margin: 'auto' }}>
            <span>
              {todo.text} 
            </span>
            {children}
          </div>
        )
}

export default Todo
