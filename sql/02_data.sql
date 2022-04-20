INSERT INTO "public"."users"("id","name","pronoun")
VALUES
(E'1fd4ab7f-b73a-4e9c-a190-89daf37fcad4',E'Douglas Adams',E'He/Him'),
(E'3bd28aa8-5841-49cc-87ba-27874382b1c9',E'Russ Walters',E'he/him'),
(E'47acbe61-f957-409f-a486-e60001b7826d',E'Dan Vanderkam',E'he/him'),
(E'38bde1fe-6c82-45ac-b78d-7f7da46e08cd',E'Josh Goldberg',E'he/him'),
(E'fc75359d-e212-4e49-a8d4-86668d5ef9a7',E'Boris Cherny',E'he/him'),
(E'00ad92c2-819f-4c82-9c8b-9872e47f0a90',E'Elizabeth Kolbert',E'she/her');

INSERT INTO "public"."book"("id","created_by","title","publication_year","contents")
VALUES
(E'3f394b16-9dff-4fd8-bdf8-bcaeebf2453a',E'1fd4ab7f-b73a-4e9c-a190-89daf37fcad4',E'The Hitchhiker\'s Guide to the Galaxy',1979,NULL),
(E'5d95c4ef-7e87-4899-acca-50b0d299f7e2',E'3bd28aa8-5841-49cc-87ba-27874382b1c9',E'The Secret Guide to Computers',1984,NULL),
(E'3610aea7-4c5f-4d58-bbd8-2a78594c8e22',E'47acbe61-f957-409f-a486-e60001b7826d',E'Effective TypeScript',2019,NULL),
(E'c1997a29-52ee-4d8d-9da0-c8524371da1b',E'fc75359d-e212-4e49-a8d4-86668d5ef9a7',E'Programming TypeScript',2019,NULL),
(E'c2e40195-4098-488c-a3fd-d92ccaa91816',E'38bde1fe-6c82-45ac-b78d-7f7da46e08cd',E'Learning TypeScript',2022,NULL),
(E'a33a1e06-1317-4787-ac71-a277ccbf064d',E'00ad92c2-819f-4c82-9c8b-9872e47f0a90',E'The Sixth Extinction: An Unnatural History',2014,NULL);

INSERT INTO "public"."reviews"("id","book_id","reviewer_id","created_at","modified_at","rating","content_md")
VALUES
(E'28c64f12-4d8e-4e57-ad47-81b097a24765',E'5d95c4ef-7e87-4899-acca-50b0d299f7e2',E'47acbe61-f957-409f-a486-e60001b7826d',E'2022-04-20 18:34:03.47845-04',E'2022-04-20 18:34:03.47845-04',4,E'Truly formative for me! But perhaps a tad dated and, in retrospect, a bit racy.'),
(E'e34b3fb3-b60e-44cd-9a2e-952b93714463',E'a33a1e06-1317-4787-ac71-a277ccbf064d',E'47acbe61-f957-409f-a486-e60001b7826d',E'2022-04-20 18:34:03.47845-04',E'2022-04-20 18:34:03.47845-04',5,E'The rare book about the environment that\'s realistic but not depressing.');
