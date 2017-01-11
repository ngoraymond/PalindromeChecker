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
  //your code here
  if(textOnly(word).equalsIgnoreCase(reverse(word)))
  {
    return true;
  }
  else
  {
    return false;
  }
}
public String reverse(String str)
{
    String sNew = new String();
    String sWord = textOnly(str);
    //your code here
    for(int i = sWord.length()-1;i>=0;i--)
      {
        sNew=sNew+sWord.substring(i,i+1);
      }
    return sNew;
}
public String textOnly(String str)
{
  String sWords=new String();
  for(int i=0;i<str.length();i++)
    {
      if(str.toLowerCase().charAt(i) != ' ' && Character.isLetter(str.charAt(i))==true)
        {
            sWords=sWords+str.toLowerCase().charAt(i);
        }
    }
  return sWords;
}


