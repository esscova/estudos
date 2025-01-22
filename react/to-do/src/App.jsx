import { useState } from "react";
import { v4 as uuid } from "uuid";
import { Container, TodoList } from './styles' 

function App() {
  const [list, setList] = useState([{id:uuid(), task:""}]);
  const [inputTask, setInputTask] = useState('');

  function inputEvent (e){
    setInputTask(e.target.value);
  }
  function cliqueiBotao () {
    setList([ ...list, {id:uuid(), task:inputTask}])
  }
  return (
    <Container>
      <TodoList>
        <input 
          onChange={inputEvent}
          placeholder='O que tenha para fazer ...' 
        />
        <button
          onClick={cliqueiBotao}
        >
          Adicionar
        </button>

        <ul>
            {
              list.map( item => (
                <li key={item.id}>{item.task}</li>
              ) )
            }
        </ul>
      </TodoList>
    </Container>
  )
}

export default App
