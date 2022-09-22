SELECT reservations.id, properties.title, reservations.start_date, properties.cost_per_night, avg(property_reviews.rating)
FROM reservations
JOIN users ON guest_id = users.id
JOIN properties ON property_id = properties.id
JOIN property_reviews on reservations.property_id = property_reviews.property_id
WHERE guest_id = 1
GROUP BY reservations.id,  properties.id
ORDER BY reservations.start_date
LIMIT 10;