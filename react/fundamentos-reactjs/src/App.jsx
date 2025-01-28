import { Post } from "./Post";

export function App() {
  return (
    <>
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

