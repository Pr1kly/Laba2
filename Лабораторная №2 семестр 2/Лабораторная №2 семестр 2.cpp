#include <iostream>
#include <string>

#define N 10
using namespace std;
extern "C" void foundmin(char ,int ,int);

int main()
{
    setlocale(LC_ALL, "RUSSIAN");
    char Text[N];
    int count = 0;
    cin.getline(Text, N);
    cout << Text << "\n";
    foundmin(Text[0],N,count);
    system("pause");
    return 0;
}

