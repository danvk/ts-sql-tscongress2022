# Sample Code for TypeScript+SQL talk (TypeScript Congress 2022)

This repo contains the sample code for my 2022 TS Congress Talk: ["TypeScript and the Database: Who Owns the Types?"][talk]. You can also read the companion blog post, [TypeScript and SQL: Six Ways to Bridge the Divide][post], or check out the [slides].

This repo has six branches corresponding to the six techniques described in the post:

- `raw-sql`: Raw SQL + Hand-coded types
- ORMs (e.g. [TypeORM])
- `pg-to-ts`: Schema Generator (e.g. [pg-to-ts])
- `knex`: Query Builder (e.g. [knex.js])
- `pgtyped`: SQL → TS (e.g. [PgTyped])
- `crudely-typed`: Hybrid Query Builder (e.g. [crudely-typed]) + PgTyped

[talk]: https://portal.gitnation.org/contents/typescript-and-the-database-who-owns-the-types
[post]: https://effectivetypescript.com/
[slides]: https://docs.google.com/presentation/d/1OsLdyLMtJ79fvuylYgmjlCrPNS_NK9xIAXKqoAyW3SI/edit#slide=id.p
[TypeORM]: https://typeorm.io/
[pg-to-ts]: https://github.com/danvk/pg-to-ts
[knex.js]: https://knexjs.org/
[PgTyped]: https://github.com/adelsz/pgtyped
[crudely-typed]: https://github.com/danvk/crudely-typed
