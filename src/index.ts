import express from "express";
import { knex } from 'knex';

const knexDb = knex({
    client: 'pg',
    // In practice this would be set some other way
    connection: 'postgres://danvk@localhost:5432/postgres',
});

const app = express();
const port = 3000;

app.get('/', (req, res) => {
  (async () => {
    const books = await knexDb('book').join('users', 'book.created_by', 'users.id').select();
    const bookRows = books.map(book => (
        `<tr>
            <td>${book.title}</td>
            <td>${book.name}</td>
            <td>${book.publication_year} (${new Date().getFullYear() - book.publication_year} year(s) ago)</td>
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
