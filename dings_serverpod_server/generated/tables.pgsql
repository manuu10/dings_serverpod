--
-- Class Dokumento as table dokumento
--

CREATE TABLE "dokumento" (
  "id" serial,
  "title" text NOT NULL,
  "notes" text NOT NULL,
  "filePaths" json NOT NULL
);

ALTER TABLE ONLY "dokumento"
  ADD CONSTRAINT dokumento_pkey PRIMARY KEY (id);


--
-- Class DokumentoTag as table dokumento_tag
--

CREATE TABLE "dokumento_tag" (
  "id" serial,
  "title" text NOT NULL,
  "colorR" integer NOT NULL,
  "colorG" integer NOT NULL,
  "colorB" integer NOT NULL
);

ALTER TABLE ONLY "dokumento_tag"
  ADD CONSTRAINT dokumento_tag_pkey PRIMARY KEY (id);


--
-- Class DokumentoTagConnection as table dokumento_tag_connection
--

CREATE TABLE "dokumento_tag_connection" (
  "id" serial,
  "tagId" integer NOT NULL,
  "dokumentoId" integer NOT NULL
);

ALTER TABLE ONLY "dokumento_tag_connection"
  ADD CONSTRAINT dokumento_tag_connection_pkey PRIMARY KEY (id);

ALTER TABLE ONLY "dokumento_tag_connection"
  ADD CONSTRAINT dokumento_tag_connection_fk_0
    FOREIGN KEY("tagId")
      REFERENCES dokumento_tag(id)
        ON DELETE CASCADE;
ALTER TABLE ONLY "dokumento_tag_connection"
  ADD CONSTRAINT dokumento_tag_connection_fk_1
    FOREIGN KEY("dokumentoId")
      REFERENCES dokumento(id)
        ON DELETE CASCADE;

