-- Exécuté automatiquement par Postgres au premier démarrage (volume vide).
-- La table "documents" (vecteurs RAG) est créée automatiquement par le nœud PGVector de n8n.

CREATE EXTENSION IF NOT EXISTS vector;

CREATE TABLE IF NOT EXISTS tickets (
    id         SERIAL PRIMARY KEY,
    nom        TEXT,
    email      TEXT,
    message    TEXT,
    categorie  TEXT,
    priorite   TEXT,
    resume     TEXT,
    reponse    TEXT,
    statut     TEXT,
    created_at TIMESTAMPTZ DEFAULT now()
);
