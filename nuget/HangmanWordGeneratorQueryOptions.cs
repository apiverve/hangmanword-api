using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.HangmanWordGenerator
{
    /// <summary>
    /// Query options for the Hangman Word Generator API
    /// </summary>
    public class HangmanWordGeneratorQueryOptions
    {
        /// <summary>
        /// Word category
        /// </summary>
        [JsonProperty("category")]
        public string Category { get; set; }

        /// <summary>
        /// Difficulty level
        /// </summary>
        [JsonProperty("difficulty")]
        public string Difficulty { get; set; }

        /// <summary>
        /// Number of words
        /// </summary>
        [JsonProperty("count")]
        public string Count { get; set; }
    }
}
