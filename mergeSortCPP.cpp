
#include <iostream>
#define size 5
using namespace std;

void merge(int arr[], int left, int mid, int right)
{
    int temp[size], i, j, k;
    i = left;
    k = left;
    j = mid + 1;

    while (i <= mid && j <= right)
    {
        if (arr[i] <= arr[j])
        {
            temp[k] = arr[i];
            i++;
        }
        else
        {
            temp[k] = arr[j];
            j++;
        }
        k++;
    }

    while (i <= mid)
    {
        temp[k] = arr[i];
        k++;
        i++;
    }
    while (j <= mid)
    {
        temp[k] = arr[j];
        k++;
        j++;
    }

    for (int x = left; x <= right; x++)
    {
        arr[x] = temp[x];
    }
}

void mergeSort(int arr[], int left, int right)
{
    int mid;
    if (left != right)
    {
        mid = left + (right - left) / 2;
        mergeSort(arr, left, mid);
        mergeSort(arr, mid + 1, right);
        merge(arr, left, mid, right);
    }
}

int main()
{

    int arr[size];
    cout << "Enter Number";

    for (int i = 0; i != 5; i++)
    {
        cin >> arr[i];
    }
    mergeSort(arr, 0, 4);
    cout << endl;
    for (int i = 0; i != 5; i++)
    {
        cout << arr[i];
    }

    return 0;
}