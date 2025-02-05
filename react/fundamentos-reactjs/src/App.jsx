import { Header } from "./components/Header";
import { Sidebar } from "./components/Sidebar";
import { Post } from "./components/Post";

import styles from './App.module.css'
import './global.css'

const posts = [
  {
    id:1,
    author:{
      avatarUrl: 'https://github.com/esscova.png',
      name: "Wellington Moreira",
      role: 'Data Scientist'
    },
    content: [
      {type: 'paragraph', content: 'Lorem ipsum'},
      {type: 'paragraph', content: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vel perspiciatis similique non, repellendus esse molestias impedit ad qui quam suscipit, dicta dolores explicabo laboriosam quae maiores dolorem, veritatis beatae blanditiis'},
      {type: 'link', content: 'lorem.ipsum/loremipsum'},
    ],
    publishedAt: new Date('2025-01-01 20:29:33'),
  },
  {
    id:2,
    author:{
      avatarUrl: 'https://github.com/diego3g.png',
      name: "Diego Fernandes",
      role: 'CTO @Rocketseat'
    },
    content: [
      {type: 'paragraph', content: 'Lorem ipsum'},
      {type: 'paragraph', content: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vel perspiciatis similique non, repellendus esse molestias impedit ad qui quam suscipit, dicta dolores explicabo laboriosam quae maiores dolorem, veritatis beatae blanditiis'},
      {type: 'link', content: 'lorem.ipsum/loremipsum'},
    ],
    publishedAt: new Date('2025-02-04 08:29:33'),
  },
];

export function App() {
  return (
    <>
      <Header />
      <div className={styles.wrapper}>
          < Sidebar />  
          <main>
            {posts.map(post => {
              return (
                <Post 
                  author={post.author}
                  content={post.content}
                  publishedAt={post.publishedAt}
                />
              )
            })}
          </main>
      </div>
    </>
  )
}

