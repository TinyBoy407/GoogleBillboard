public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
public void setup()  
{            
  String digits = e.substring(2,12);
  double dNum = Double.parseDouble(digits);
  for(int i = 0; i < e.length(); i++){
    if(i < 127 && isPrime(dNum) == false){
      digits = e.substring(2+i,12+i);
      dNum = Double.parseDouble(digits);
    }
    else if (isPrime(dNum) == true){
      System.out.println(dNum);
      break;
    }
  }
}  

public boolean isPrime(double dNum)  
{   
  for(int i = 2; i <= Math.sqrt(dNum); i++){
    if(dNum%i == 0){
      return false;
    }
  }
  return true; 
} 
