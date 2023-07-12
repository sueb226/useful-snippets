SELECT
	p.ID AS 'PostID',
	p.post_type AS 'Post Type',
	p.post_title AS ' Post Title',
	p.post_status AS 'Post Status',
	p.post_parent AS 'Post Parent ID',
	p.guid AS 'GUID',
	p.post_content AS 'Post Content',
  p.post_date AS 'Post Date',
  author.user_email AS 'Author Email',
	author.display_name AS 'Author Display Name',
	p.post_modified AS 'Post Modified',
	editor.user_email AS 'Editor Email',
	editor.display_name AS 'Editor Display Name'
FROM wp_posts p , wp_postmeta pm, wp_users  author, wp_users  editor 
WHERE 	p.post_status in ( 'publish', 'draft','private' )
	AND p.post_author = author.id
	AND ( pm.post_id = p.id
				AND pm.meta_key LIKE '%_edit_last%'
				AND pm.meta_value = editor.id
				)
ORDER BY p.post_status DESC, p.post_modified DESC
