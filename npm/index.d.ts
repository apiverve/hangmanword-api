declare module '@apiverve/hangmanword' {
  export interface hangmanwordOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface hangmanwordResponse {
    status: string;
    error: string | null;
    data: HangmanWordGeneratorData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface HangmanWordGeneratorData {
      words:      Word[];
      count:      number | null;
      difficulty: null | string;
      category:   null | string;
      html:       null | string;
      image:      Image;
  }
  
  interface Image {
      imageName:   null | string;
      format:      null | string;
      downloadURL: null | string;
      expires:     number | null;
  }
  
  interface Word {
      word:          null | string;
      blanks:        null | string;
      length:        number | null;
      uniqueLetters: number | null;
      difficulty:    null | string;
      category:      null | string;
      maxGuesses:    number | null;
  }

  export default class hangmanwordWrapper {
    constructor(options: hangmanwordOptions);

    execute(callback: (error: any, data: hangmanwordResponse | null) => void): Promise<hangmanwordResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: hangmanwordResponse | null) => void): Promise<hangmanwordResponse>;
    execute(query?: Record<string, any>): Promise<hangmanwordResponse>;
  }
}
