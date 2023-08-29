# Sample Code for TypeScript+SQL talk (TypeScript Congress 2022)

This repo contains the sample code for my 2022 TS Congress Talk: ["TypeScript and the Database: Who Owns the Types?"][talk]. You can also read the companion blog post, [TypeScript and SQL: Six Ways to Bridge the Divide][post], or check out the [slides].

This repo has six branches corresponding to the six techniques described in the post:

- [`raw-sql`]: Raw SQL + Hand-coded types
- ORMs (e.g. [TypeORM])
- [`pg-to-ts`][pg2tsb]: Schema Generator (e.g. [pg-to-ts])
- [`knex`]: Query Builder (e.g. [knex.js])
- [`pgtyped`][pgtb]: SQL → TS (e.g. [PgTyped])
- [`crudely-typed`][ctb]: Hybrid Query Builder (e.g. [crudely-typed]) + PgTyped

[talk]: https://portal.gitnation.org/contents/typescript-and-the-database-who-owns-the-types
[post]: https://effectivetypescript.com/
[slides]: https://docs.google.com/presentation/d/1OsLdyLMtJ79fvuylYgmjlCrPNS_NK9xIAXKqoAyW3SI/edit#slide=id.p
[TypeORM]: https://typeorm.io/
[pg-to-ts]: https://github.com/danvk/pg-to-ts
[knex.js]: https://knexjs.org/
[PgTyped]: https://github.com/adelsz/pgtyped
[crudely-typed]: https://github.com/danvk/crudely-typed

[raw-sql]: https://github.com/danvk/ts-sql-tscongress2022/tree/raw-sql
[pg2tsb] https://github.com/danvk/ts-sql-tscongress2022/tree/pg-to-ts
[knex]: https://github.com/danvk/ts-sql-tscongress2022/tree/knex
[pgtb]: https://github.com/danvk/ts-sql-tscongress2022/tree/pgtyped
[ctb]: https://github.com/danvk/ts-sql-tscongress2022/tree/crudely-typed
