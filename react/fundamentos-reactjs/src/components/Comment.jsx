import { ThumbsUp, Trash } from 'phosphor-react'
import styles from './Comment.module.css'

export function Comment () {
    return(
        <div className={styles.comment}>
            <img src="https://github.com/esscova.png" alt="" />
            
            <div className={styles.commentBox}>
                <div className={styles.commentContent}>
                    <header>
                        <div className={styles.authorAndTime}>
                            <strong>Wellington Moreira</strong>
                            <time 
                                title='31 de Janeiro às 20:29h' 
                                dateTime="2025-01-01 20:29:33">
                                Cerca de 1h atrás
                            </time>
                        </div>
                        <button title='Deletar comentário'>
                            <Trash size={24} />
                        </button>
                    </header>
                    <p>Lorem ipsum dolor sit amet</p>
                </div>
                <footer>
                    <button>
                        <ThumbsUp />
                        Aplaudir <span>20</span>
                    </button>
                </footer>
            </div>
        </div>
    )
}