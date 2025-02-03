import { Comment } from './Comment';
import styles from './Post.module.css'

export function Post (){
    return(
        <article className={styles.post}>
            <header>
                <div className={styles.author}>
                    <img
                        className={styles.avatar} 
                        src="https://github.com/esscova.png" alt="" 
                    />
                    <div className={styles.authorInfo}>
                        <strong>Wellington Moreira</strong>
                        <span>Data Scientist</span>
                    </div>
                </div>
                <time 
                    title='31 de Janeiro às 20:29h' 
                    dateTime="2025-01-01 20:29:33">
                    Publicado há 1h
                </time>
            </header>
            
            <div className={styles.content}>
                <p>Lorem ipsum</p>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vel perspiciatis similique non, repellendus esse molestias impedit ad qui quam suscipit, dicta dolores explicabo laboriosam quae maiores dolorem, veritatis beatae blanditiis.</p>
                <p><a href="#">lorem.ipsum/loremipsum</a></p>
                <p>
                    <a href="#">#hashtag1</a>{' '} 
                    <a href="#">#hashtag2</a>{' '}
                    <a href="#">#hashtag3</a>{' '}
                </p>
            </div>

            <form className={styles.comentForm}>
                <strong>Deixe seu feedback</strong>
                <textarea
                    placeholder='Deixe um comentário'
                />
                <footer>
                    <button type='submit'>Publicar</button>
                </footer>
            </form>

            <div className={styles.commentList}>
                <Comment />
            </div>
        </article>
    );
}