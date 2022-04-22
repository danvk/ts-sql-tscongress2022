import { knex } from 'knex';
import type { Book, Reviews, TableTypes, Users } from './dbschema';

declare module 'knex/types/tables' {
    interface Tables {
        book: Book;
        reviews: Reviews;
        users: Users;
    }
}
