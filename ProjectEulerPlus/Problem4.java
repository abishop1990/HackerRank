mport java.util.*;

public class Solution
{
    public static void main(String [] args)
    {
        //Get input
        Scanner in = new Scanner(System.in);
        int T = in.nextInt();
        int max = 0;
        int [] N = new int[T];
        for(int i = 0; i < T; ++i)
        {
            N[i] = in.nextInt();
            if(N[i] > max) max = N[i];
        }
        
        //Do calculations
        HashSet<Integer> setPalindromes = getAllPalindromeProducts(max);
        ArrayList<Integer> palindromes = new ArrayList(setPalindromes); 
        Collections.sort(palindromes);       
       /* for(int i = 0; i < palindromes.size(); ++i)
        {
            System.err.println(palindromes.get(i));
        }*/
        //Search (Binary search might be easier)
        for (int i = 0; i < T; ++i)
        {
            System.out.println(getMaxPalindrome(N[i],palindromes));
        }
    }
    
    //Uses binary search
    public static int getMaxPalindrome(int maxValue, ArrayList<Integer> palindromes)
    {
        /*
        int start = 0, end = palindromes.size()-1;
        boolean found = false;
        int index,value=0;
        while(!found)
        {
            index = start + (end-start)/2;
            value = palindromes.get(index);
            if(start == end) break;
            if(value < maxValue) start = index; 
            else if(value > maxValue)
            {
                if(value < palindromes.get(index+1)) break;
                else end = index;
            }
            else break;
        }
        return value;
        */
        int value = 0;
        for(int i = 0; i < palindromes.size(); ++i)
        {
            value = palindromes.get(i);
            if(value < maxValue) continue;
            else if(value > maxValue)
            {
                value = palindromes.get(i-1);
                break;
            }
            else break;
        }
        return value;
    }
    
    
    public static boolean isPalindrome(int n)
    {
        boolean isPal = false;
        //Turn int into string
        String val = Integer.toString(n);
        int size = val.length();
        //Split and reverse second half
        String firstHalf = val.substring(0,size/2);
        String secondHalf;
        if(size%2 == 0) secondHalf = val.substring(size/2);
        else secondHalf = val.substring( (size/2) +1);
        //If first half equal to second half (reversed) then is palindrome
        secondHalf = new StringBuilder(secondHalf).reverse().toString();
        if(firstHalf.equals(secondHalf))
        {
            //System.err.println(n + " is a palindrome");
            isPal = true;
        }
        return isPal;
    }
    
    public static HashSet<Integer> getAllPalindromeProducts(int max)
    {
        HashSet<Integer> palindromes = new HashSet<Integer>();
        for(int i = 100; i < 1000; ++i)
        {
            for(int j = 100; j < 1000; ++j)
            {
                int prod = i*j;
                if(prod > max) break; //You're done if you're past max
                if(isPalindrome(prod))
                {
                    palindromes.add(prod);
                }
            }
        }
        return palindromes;
    }
}
