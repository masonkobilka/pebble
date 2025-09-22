-- name: CreateAction :one
INSERT INTO actions (id, title, start_at, finish_at)
VALUES (?1, ?2, ?3, ?4)
RETURNING *;

-- name: ReadActions :many
SELECT * FROM actions;

-- update

-- delete
-- name: DeleteAction :exec
DELETE FROM actions WHERE id = ?1;
