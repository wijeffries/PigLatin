public void setup() 
{
  String[] lines = {"beast","dough","happy","question","star","three","eagle","try"};
  System.out.println("there are " + lines.length + " lines");
  for (int i = 0 ; i < lines.length; i++) 
  {
    System.out.println(pigLatin(lines[i]));
  }
}
public void draw()
{
        //not used
}
public int findFirstVowel(String sWord) {
  int total = -1;
    for (int i = 0; i < sWord.length(); i++) {
      if (sWord.substring(i, i+1).equals("a") || sWord.substring(i, i+1).equals("e") || sWord.substring(i, i+1).equals("i") || sWord.substring(i, i+1).equals("o") || sWord.substring(i, i+1).equals("u")) {
        if (sWord.substring(i, i+1).equals("u")) {
          if (sWord.substring(i-1, i).equals("q")) {
            return i+1;
          }
        }
        return i;
      }
    }
    return total;
}

public String pigLatin(String sWord) {
  if (findFirstVowel(sWord) > 0) {
    return (sWord.substring(findFirstVowel(sWord)) + sWord.substring(0, findFirstVowel(sWord)) + "ay");
  } else if (findFirstVowel(sWord) == 0) {
    return(sWord + "way");
  }
{
  if(findFirstVowel(sWord) == -1)
  {
    return sWord + "ay";
  }
  else
  {
    return "ERROR!";
  }
}
}
