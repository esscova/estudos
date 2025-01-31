import { Header } from "./components/Header";
import { Post } from "./Post";
import './global.css'
import styles from './App.module.css'
import { Sidebar } from "./components/Sidebar";

export function App() {
  return (
    <>
      <Header />
        <div className={styles.wrapper}>
          < Sidebar />  
          <main>
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
          </main>
      </div>
    </>
  )
}

