public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String noSpacecap = "";
  for (int i = 0; i < word.length(); i++)
  {
    if(! word.substring(i, i+1).equals(" ") == true)
    {
      if (Character.isLetter(word.charAt(i)) == true)
       noSpacecap = noSpacecap + word.substring(i, i+1);
    }
  }
  noSpacecap = noSpacecap.toLowerCase();
  if (noSpacecap.equals(reverse(noSpacecap)) == true)
    return true;
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for (int i = str.length()-1; i >= 0; i--)
    {
      sNew = sNew + str.substring(i, i+1);
    }
    return sNew;
}


