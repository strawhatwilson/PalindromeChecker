public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  
  String word2 = noSpaces(word);
  word2 = onlyLetters(word2);
  if(word2.equals(reverse(word2)))
    return true;
  else
    return false;
}
public String reverse(String str)
{
    String x = new String();
    for (int i=str.length()-1; i>=0; i--)
      x = x + str.substring(i,i+1);
      return x;
}
public String onlyLetters(String word)
{
  return word.toLowerCase();
}
public String noSpaces(String word)
{
  String x = new String();
  for (int i=0; i < word.length(); i++)
  if(Character.isLetter(word.charAt(i)) == true)
    x = x + word.charAt(i);
  return x;
}

