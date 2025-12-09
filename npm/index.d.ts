declare module '@apiverve/hangmanword' {
  export interface hangmanwordOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface hangmanwordResponse {
    status: string;
    error: string | null;
    data: HangmanWordGeneratorData;
    code?: number;
  }


  interface HangmanWordGeneratorData {
      words:      Word[];
      count:      number;
      difficulty: string;
      category:   string;
      html:       string;
  }
  
  interface Word {
      word:          string;
      blanks:        string;
      length:        number;
      uniqueLetters: number;
      difficulty:    string;
      category:      string;
      maxGuesses:    number;
  }

  export default class hangmanwordWrapper {
    constructor(options: hangmanwordOptions);

    execute(callback: (error: any, data: hangmanwordResponse | null) => void): Promise<hangmanwordResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: hangmanwordResponse | null) => void): Promise<hangmanwordResponse>;
    execute(query?: Record<string, any>): Promise<hangmanwordResponse>;
  }
}
