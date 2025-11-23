SELECT 
    COUNT(A.userid) AS id_viewed,
    ---------------------------------------------------------------------Which race group has the highest number of viewers?
    race AS race_viewed,
    COUNT(channel2) AS channel_viewed,
---Find unique social media handles
    COUNT(DISTINCT A.`Social Media Handle`) AS unique_social_media_handles,
---Which province has the highest number of viewers?
    province AS province_viewed,
------------------------------------------------------------------------- Which gender has the highest number of viewers?
    gender AS gender_viewed,
------------------------------------------------------------------------- Which age group has the highest number of viewers?
    age AS age_viewed,
------------------------------------------------------------------------- Most viewed channel
channel2 AS most_viewed_channel,
----------------------------------------------------------------------
---Longest duration
duration2 AS duration_time
FROM bright_tv_user_profiles AS A
LEFT JOIN bright_tv_viewership AS B
    ON A.UserID = B.UserID
GROUP BY ALL
ORDER BY duration_time DESC;          
