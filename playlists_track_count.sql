-- Provide a query that shows the total number of tracks in each playlist. The resultant table should include:
Playlist name
Total number of tracks on each playlist
select p.Name, count(pt.TrackId) as number_of_tracks
from Playlist p
join PlaylistTrack pt on pt.PlaylistId = p.PlaylistId
group by pt.PlaylistId;