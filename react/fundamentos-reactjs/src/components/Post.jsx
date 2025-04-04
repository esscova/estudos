import { useState } from 'react';

import { format, formatDistanceToNow } from 'date-fns';
import ptBR from 'date-fns/locale/pt-BR'

import { Avatar } from './Avatar';
import { Comment } from './Comment';

import styles from './Post.module.css'

export function Post ({author, publishedAt, content}){
    const [comments, setComments] = useState(['post']);
    const [newCommentText, setNewCommentText] = useState('');

    function handleCreateNewComment(){
        event.preventDefault();        
        setComments([...comments, newCommentText]);
        setNewCommentText("");
    }

    function handleNewCommentInvalid (){
        event.target.setCustomValidity('Campo obrigatório, digite alguma coisa...');
    }

    function handleNewCommentchange (){
        event.target.setCustomValidity('');
        setNewCommentText(event.target.value);
    }

    function deleteComment(commentToDelete){
        const commentsWithoutDeletedOne = comments.filter(comment => {
            return comment !== commentToDelete
        });
        setComments(commentsWithoutDeletedOne);
    }

    const publishedDateFormatted = format(publishedAt, "d 'de' LLLL 'às' HH:mm'h'",{
        locale: ptBR
    });

    const publishedRelativeToNow = formatDistanceToNow(publishedAt, {
        locale: ptBR,
        addSuffix: true,
    })

    const isNewCommentEmpty = newCommentText.length === 0;
    return(
        <article className={styles.post}>
            <header>
                <div className={styles.author}>
                    <Avatar
                        src={author.avatarUrl}
                    />
                    <div className={styles.authorInfo}>
                        <strong>{author.name}</strong>
                        <span>{author.role}</span>
                    </div>
                </div>
                <time 
                    title={publishedDateFormatted} 
                    dateTime={publishedAt.toISOString()}>
                    {publishedRelativeToNow}
                </time>
            </header>
            
            <div className={styles.content}>
                {
                    content.map(line => {
                        if(line.type === 'paragraph'){
                            return <p key={line.content}>{line.content}</p>;
                        }else if (line.type === 'link'){
                            return <p key={line.content}><a href="#">{line.content}</a></p>;
                        }
                    })
                }
            </div>

            <form 
                className={styles.comentForm}
                onSubmit={handleCreateNewComment}
            >
                <strong>Deixe seu feedback</strong>
                <textarea
                    placeholder='Deixe um comentário'
                    name='textAreaComment'
                    value={newCommentText}
                    onChange={handleNewCommentchange}
                    onInvalid={handleNewCommentInvalid}
                    required
                />
                <footer>
                    <button 
                        type='submit'
                        disabled={isNewCommentEmpty}
                    >
                        Publicar
                    </button>
                </footer>
            </form>

            <div className={styles.commentList}>
                {
                    comments.map(comment => {
                        return (
                            <Comment 
                                key={comment} 
                                content={comment} 
                                deleteComment={deleteComment}
                            />);
                    })
                }
            </div>
        </article>
    );
}