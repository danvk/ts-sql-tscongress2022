ALTER TABLE book ALTER COLUMN publication_year DROP NOT NULL;

INSERT INTO "public"."users"("id","name","pronoun")
VALUES
(E'b795e9cb-743f-4e6a-b322-d8e40d9bafb4',E'Homer',E'he/him');

INSERT INTO "public"."book"("id","created_by","title","publication_year","contents")
VALUES
(E'a187259b-36d5-4093-9870-54f3a863ddb7',E'b795e9cb-743f-4e6a-b322-d8e40d9bafb4',E'The Odyssey',NULL,E'Tell me, O muse, of that ingenious hero who travelled far and wide after he had sacked the famous town of Troy...'),
(E'f0349437-7305-4955-8006-7cc976837c65',E'b795e9cb-743f-4e6a-b322-d8e40d9bafb4',E'The Iliad',NULL,E'Sing, O goddess, the anger of Achilles son of Peleus, that brought countless ills upon the Achaeans...');
