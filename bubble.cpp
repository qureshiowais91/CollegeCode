#include <iostream>
#include <fstream>

using namespace std;

int main()
{
    int arr[5];
    fstream newFile;

    cout << "Enter Number in File :\n";
    newFile.open("text.txt", ios::out);
    for (int i = 0; i != 5; i++)
    {
        cin >> arr[i];
        newFile << arr[i];
    }
    newFile.close();
    for (int i = 0; i != 5; i++)
    {
        newFile.open("text.txt", ios::in);
        newFile >> arr[i];
    }
    return 0;
}
