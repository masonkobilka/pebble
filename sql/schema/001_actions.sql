-- +goose UP
CREATE TABLE actions(
  id TEXT PRIMARY KEY,
  title TEXT NOT NULL,
  description TEXT,
  status TEXT NOT NULL DEFAULT 'pending',
  created_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
  start_at TEXT NOT NULL,
  finish_at TEXT NOT NULL
);

-- +goose Down
DROP TABLE actions;
