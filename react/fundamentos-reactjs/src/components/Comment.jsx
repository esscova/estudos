import { ThumbsUp, Trash } from 'phosphor-react'
import styles from './Comment.module.css'
import { Avatar } from './Avatar'
import { useState } from 'react';

export function Comment ({content, deleteComment}) {

    const[likeCount, setLikeCount] = useState(0);

    function handleDeleteComment (){
        deleteComment(content);
    }

    function handleLikeComment (){
        setLikeCount(likeCount + 1);
    }

    return(
        <div className={styles.comment}>
            <Avatar 
                hasBorder={false}
                src="https://github.com/esscova.png" 
            />
            
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
                        <button 
                            onClick={handleDeleteComment}
                            title='Deletar comentário'>
                            <Trash size={24} 
                        />
                        </button>
                    </header>
                    <p>{content}</p>
                </div>
                <footer>
                    <button onClick={handleLikeComment}>
                        <ThumbsUp />
                        Aplaudir <span>{likeCount}</span>
                    </button>
                </footer>
            </div>
        </div>
    )
}