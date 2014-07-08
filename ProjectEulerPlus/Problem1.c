#include <stdio.h>

long sumOfSequence(long int N);
long sumOfProgression(long int  N, long int mult);

int main(int argc, char * argv [])
{
    int T, N;
    long int sum;
    scanf("%d\n",&T);
    for(int i = 0; i < T; ++i)
    {
        scanf("%d\n",&N);
        sum = sumOfSequence(N-1); //LESS THAN N
        printf("%ld\n",sum);
    }
    return 0;
}

long int sumOfSequence(long int N)
{
    long sum3 = sumOfProgression(N,3); //Sum of 3s
    long sum5 = sumOfProgression(N,5); //Sum of 5s
    long sum15 = sumOfProgression(N,15); //Sum of 15s
    return sum3 + sum5 - sum15;
}

long int sumOfProgression(long int N, long int mult)
{
    //Sum of arithmetic progression is  (N *(An + A0))/2
    if(N < mult) return 0;
    long int n = N/mult;
    long int end = n*mult;
    long int start = mult;
    return (n * (start+end))/2;
}
