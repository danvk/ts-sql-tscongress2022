import express from "express";
import { Pool } from "pg";
import {sql} from "@pgtyped/query";
import { IGetBooksQuery } from "./index.types";
import { TypedSQL } from "crudely-typed";
import { tables } from "./dbschema";

const pool = new Pool({
    // In practice this would be set some other way
    connectionString: 'postgres://danvk@localhost:5432/postgres',
});

const app = express();
const port = 3000;

const typedDb = new TypedSQL(tables);

// #section
// const getBooks = sql<IGetBooksQuery>`SELECT book.*, author.name as author_name FROM book JOIN users as author ON created_by = author.id;`;
const getBooks = typedDb.table('book').select({join: {author: 'created_by'}});
// /section

app.get('/', (req, res) => {
  (async () => {
    const books = await getBooks(pool);
    const bookRows = books.map(book => (
        `<tr>
            <td>${book.title}</td>
            <td>${book.author.name}</td>
            <td>${book.publication_year === null ? '???' : `${book.publication_year} (${new Date().getFullYear() - book.publication_year} year(s) ago)`}</td>
        </tr>`
    ));

    res.send(`
        <h1>Books, beautiful books!</h1>
        <table>
            ${bookRows.join('\n')}
        </table>
    `);
  })();
});

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
});
