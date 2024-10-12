using System.Text.RegularExpressions;

class Program
{
    static void Main()
    {
        //First();
        //Second();
        Third();
    }
    static void First()
    {
        Console.WriteLine("Введите вашу строку");
        string str = Console.ReadLine();
        var rStr = string.Join("",str.Reverse());
        if (str == rStr)
            Console.WriteLine("Палиндром");
        else
            Console.WriteLine("Не палиндром");
    }


    static void Second()
    {
        Console.WriteLine("Введите строку:");
        string input = Console.ReadLine();
        string longest = FindLongest(input);

        if (longest.Length > 0)
        {
            Console.WriteLine($"Длинная подстрока для удаления: {longest}");
            string result = input.Replace(longest, "");
            Console.WriteLine($"Строка после удаления: {result}");
        }
        else
        {
            Console.WriteLine("Нет повторяющихся символов для удаления.");
        }
    }

    static string FindLongest(string input)
    {
        Regex regex = new Regex(@"(.)\1+");
        MatchCollection matches = regex.Matches(input);

        string longest = "";

        foreach (Match match in matches)
        {
            if (match.Length > longest.Length)
            {
                longest = match.Value;
            }
        }

        return longest;
    }

    static void Third()
    {
        Console.WriteLine("Введите вашу строку");
        string input = Console.ReadLine();
        string cleanedInput = Regex.Replace(input, @"[\p{P}]", " ");

        string[] words = cleanedInput.Split(new[] { ' ' }, StringSplitOptions.RemoveEmptyEntries);

        // Используем HashSet для хранения уникальных слов (без учета регистра)
        HashSet<string> uniqueWords = new HashSet<string>(StringComparer.OrdinalIgnoreCase);
        List<string> resultWords = new List<string>();

        foreach (string word in words)
        {
            if (uniqueWords.Add(word))
            {
                resultWords.Add(word);
            }
        }
 
        Console.WriteLine(string.Join(" ", resultWords)); 
    }
}