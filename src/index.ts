import express from "express";
import { Pool } from "pg";

const pool = new Pool({
    // In practice this would be set some other way
    connectionString: 'postgres://danvk@localhost:5432/postgres',
});

const app = express();
const port = 3000;

app.get('/', (req, res) => {
  (async () => {
    const books = await pool.query(`SELECT * FROM book`);
    const bookRows = books.rows.map(book => (
        `<tr>
            <td>${book.title}</td>
            <td>${book.year} (${new Date().getFullYear() - book.year} year(s) ago)</td>
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
