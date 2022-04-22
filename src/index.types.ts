/** Types generated for queries found in "src/index.ts" */

/** 'GetBooks' parameters type */
export type IGetBooksParams = void;

/** 'GetBooks' return type */
export interface IGetBooksResult {
  author_name: string;
  contents: string | null;
  created_by: string;
  id: string;
  publication_year: number | null;
  title: string | null;
}

/** 'GetBooks' query type */
export interface IGetBooksQuery {
  params: IGetBooksParams;
  result: IGetBooksResult;
}

