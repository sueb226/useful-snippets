  # Source: https://wordpress.stackexchange.com/questions/178816/count-posts-for-each-year          
            
            SELECT YEAR(post_date) AS `year`, count(ID) as `content`
            FROM wp_posts
            WHERE post_type IN ('attachment', 'post', 'page', 'my-custom-post-type')
            AND post_status IN ('publish')
            GROUP BY YEAR(post_date)
            ORDER BY post_date DESC
