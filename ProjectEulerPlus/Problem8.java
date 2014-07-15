/*
 * Project Euler Plus Problem 8
 *
 * Parses the largest product of K digits in a large number
 * Uses T inputs: Values N, K and the string str
 *
 * Written By Alan Bishop 7/14/14
 */

import java.util.*;

public class Solution
{
    public static void main(String [] args)
    {
        Scanner in = new Scanner(System.in);
        int T = in.nextInt();
        for(int i = 0; i < T; ++i)
        {
            int N = in.nextInt();
            int K = in.nextInt();
            in.nextLine(); //LOLPARSING
            String str = in.nextLine();
            //System.out.println("T="+T+" N="+N+" K="+K);
            //System.out.println("STR="+str);
            int prod = getLargestProductInString(N,K,str);
            System.out.println(prod);
        }
    }
    
    public static int getLargestProductInString(int N, int K, String str)
    {
        int hp = 0; //highest product
        int cp = 1; //current product
        ArrayList<Integer> cur = new ArrayList<Integer>();
        for(int counter = 0; counter < N-K; ++counter)
        {
            cp = 1; //Reset current product
            for(int i = 0; i < K; ++i)
            {
                String stri = "" +str.charAt(counter+i);
                Integer ti = Integer.parseInt(stri);
                cp *= ti;
                if(ti == 0) //then we can skip past it
                {
                    cp = 0;
                    counter += i; //Move counter past the 0 (everything with it is going to mult to 0)
                    break;
                }
            }
            if(cp > hp) hp = cp;
            
        }
        return hp;
    }
}
