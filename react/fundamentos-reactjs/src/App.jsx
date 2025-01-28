import { Header } from "./components/Header";
import { Post } from "./Post";
import './global.css'

export function App() {
  return (
    <>
    <Header />
      <h1>Posts</h1>
      <Post 
        author="escova"
        title="Titulo 1"
        content="Lorem ipsum dolor sit amet consectetur adipisicing elit. Quo voluptas accusantium porro quidem quia. Rem quia perspiciatis perferendis facilis suscipit."
      />
      <Post 
        author="escova"
        title="Titulo 2"
        content="Lorem ipsum dolor sit amet consectetur adipisicing elit. Quo voluptas accusantium porro quidem quia. Rem quia perspiciatis perferendis facilis suscipit."
      />
      <Post />
    </>
  )
}

