-- Task 1 (Найти все комментарии(comment_content) в блоге и их автора, оставленные пользователем admin)
SELECT comment_content, comment_author FROM	wp_comments
WHERE comment_author = "admin";

-- Task 2 (Найти все заголовки постов и количество комментариев, где количество комментариев находится в диапазоне от 1 до 5)
SELECT post_title, comment_count FROM wp_posts
WHERE comment_count BETWEEN 1 and 5;

-- Task 3 (Найти все заголовки постов и их уникальные комментарии, если они есть)
SELECT wp_posts.post_title, wp_comments.comment_content
FROM wp_posts JOIN wp_comments ON wp_posts.ID=wp_comments.comment_post_ID

-- Task 4 (Найти все комментарии(comment_content) и заголовки постов, у которых буква “e” в текст комментария является третьей с конца.)
SELECT wp_posts.post_title, wp_comments.comment_content
FROM wp_posts JOIN wp_comments ON wp_posts.ID=wp_comments.comment_post_ID
HAVING wp_comments.comment_content LIKE '%е__';
