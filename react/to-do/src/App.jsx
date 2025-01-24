import { useState } from "react";
import { v4 as uuid } from "uuid";
import { Container, TodoList, Input, Button, ListStyle, Trash, Check } from './styles';

function App() {
  // estados
  const [list, setList] = useState([]);
  const [inputTask, setInputTask] = useState('');

  // atualiza o inputTask com valor do input digitado
  function inputEvent (e){
    setInputTask(e.target.value);
  }
  // adiciona tarefa na lista
  function cliqueiBotao () {
    if(inputTask){
      setList([ ...list, {id:uuid(), task:inputTask, done:false}])
    }
  } 
  // toogle do campo done
  function finalizarTarefa (id){
    const newList = list.map ( item => (
      item.id === id ? {...item, done:!item.done} : item
    ))
    setList(newList)
  } 
  // remove da lista 
  function deletarTarefa(id){
    const newList = list.filter(item => item.id !== id)
    setList(newList)
  }


  return (
    <Container>
      <TodoList>
        <Input 
          onChange={inputEvent}
          placeholder='O que tenha para fazer ...' 
        />
        <Button
          onClick={cliqueiBotao}
        >
          Adicionar
        </Button>

        <ul>
            {
              list.length > 0 ? (
                list.map( item => (
                  <ListStyle isDone={item.done} key={item.id}>
                    <Check onClick={() => finalizarTarefa(item.id)}/>
                      <li >{item.task}</li>
                    <Trash onClick={() => deletarTarefa(item.id)}/>
                  </ListStyle>
                ) )
              ) : (
                <h3>Sem items na lista</h3>
              )
            }
        </ul>
      </TodoList>
    </Container>
  )
}

export default App
