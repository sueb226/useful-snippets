SELECT 
 wp_posts.post_date AS 'Post Date',
	wp_posts.post_modified AS 'Post Modified',
	wp_posts.post_title AS ' Post Title',
	wp_posts.post_type AS 'Post Type',
	wp_posts.post_parent AS 'Post parent id',
	wp_posts.guid AS 'GUID',
	author.user_email AS 'Author Email',
	author.display_name AS 'Author Display Name',
	editor.user_email AS 'Editor Email',
	editor.display_name AS 'Editor Display Name'
FROM wp_posts, wp_postmeta, wp_users  author, wp_users  editor 
WHERE wp_posts.post_type IN ('page','post','attachment')
	AND wp_posts.post_status in ( 'publish', 'draft','private' )
	AND wp_posts.post_author = author.id
	AND ( wp_postmeta.post_id = wp_posts.id
				AND wp_postmeta.meta_key LIKE '%_edit_last%'
				AND wp_postmeta.meta_value = editor.id
				)
		ORDER BY wp_posts.post_type ASC, wp_posts.post_modified DESC
