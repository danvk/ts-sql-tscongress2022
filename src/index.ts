import express from "express";
import { Pool } from "pg";

const pool = new Pool({
    // In practice this would be set some other way
    connectionString: 'postgres://danvk@localhost:5432/postgres',
});

const app = express();
const port = 3000;

// #section
// <td>${book.publication_year === null ? '???' : `${book.publication_year} (${new Date().getFullYear() - book.publication_year} year(s) ago)`}</td>
// #/section

app.get('/', (req, res) => {
  (async () => {
    interface Book {
      id: string;
      created_by: string;
      title: string;
      publication_year: number | null;
      contents: string | null;
    }
    const books = await pool.query<Book>(`SELECT * FROM book`);
    const bookRows = books.rows.map(book => (
        `<tr>
            <td>${book.title}</td>
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
