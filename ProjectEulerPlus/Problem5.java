import java.util.*;

public class Solution
{
    public static void main(String  [] args)
    {
        Scanner in = new Scanner(System.in);
        int T = in.nextInt();
        for(int i = 0; i < T; ++i)
        {
            int N = in.nextInt();
            System.out.println(minDivisible(N));    
        }
    }
    
    public static long minDivisible(int N)
    {
        long val = N-1;
        boolean done = false;
        while(!done)
        {
            val += 1;
            done = true;
            for(int i = 1; i < N+1; ++i)
            {
                if(val%i > 0) 
                {
                    done = false;
                    break;
                }
            }
        }
        return val;
    }   
}
