using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Security.Cryptography;

namespace Engine
{
    public static class RandomNumberGenerator
    {
        private static readonly RNGCryptoServiceProvider _generator = new RNGCryptoServiceProvider();
        public static int NumberBetween(int minimumValue, int maximumValue)
        {
            byte[] randomNumber = new byte[1];

            _generator.GetBytes(randomNumber);

            double asciValueOfRandomCharacter = Convert.ToDouble(randomNumber[0]);

            //We are using Math.max, and substracting 0.00000001,
            //to ensure 'multiplier' will always be between 0.0 amd 0.9999999999
            //Otherwise, it is possible for it to be "1" which causes problems in our roudning.
            double multiplier = Math.Max(0, (asciValueOfRandomCharacter / 255d) - 0.00000000001d);

            //We need to add one to the range, to allow for the rounding done with Math.Floor
            int range = maximumValue - minimumValue + 1;

            double RandomValueInRange = Math.Floor(multiplier * range);

            return (int)(minimumValue + RandomValueInRange);
        }

        //Simple version, with less randomness.
        // If you want this version you can delete the NumberBEtween Function above
        // and rename this from Simple Number between to NumberBetween
        private static readonly Random _simpleGenerator = new Random();
        public static int SimpleNumberBtween(int minimumValue, int maximumValue)
        {
            return _simpleGenerator.Next(minimumValue, maximumValue + 1);
        }
    }
}
