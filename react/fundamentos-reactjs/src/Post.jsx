export function Post ({author, title, content}) {
    return (
        <div>
            <h2>{title}</h2>
            <p>{content}</p>
            <strong>{author}</strong>
        </div>
    )
}