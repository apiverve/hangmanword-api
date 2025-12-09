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
        /// Category: random, animals, countries, foods, sports, colors, occupations
        /// Example: animals
        /// </summary>
        [JsonProperty("category")]
        public string Category { get; set; }

        /// <summary>
        /// Difficulty: easy, medium, hard
        /// Example: medium
        /// </summary>
        [JsonProperty("difficulty")]
        public string Difficulty { get; set; }

        /// <summary>
        /// Number of words (1-10)
        /// Example: 1
        /// </summary>
        [JsonProperty("count")]
        public string Count { get; set; }
    }
}
