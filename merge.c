#include <stdio.h>
#include <stdio.h>

void merge(int arr[], int left, int mid, int right)
{
    int i, j, k;
    int temp[5];

    k = left;
    i = left;
    j = 1 + mid;

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
        i++;
        k++;
    }
    while (j <= right)
    {
        temp[k] = arr[j];
        j++;
        k++;
    }
    int x;
    for (x = left; x <= right; x++)
    {
        arr[x] = temp[x];
    }
}

void mergesort(int arr[], int left, int right)
{
    int mid;
    if (left < right)
    {
        //Find the middle point to divide the array into two halves
        mid = left + (right - left) / 2;
        // Call mergeSort for first half:
        mergesort(arr, left, mid);
        //Call mergeSort for Second half:
        mergesort(arr, mid + 1, right);
        // Call  merge(arr, l, m, r)
        merge(arr, left, mid, right);
    }
}

int main()
{
    int arr[5];
    int mid;
    int i = 0;
    printf("Enter arr values: \n");
    for (i = 0; i <= 4; i++)
    {
        scanf("%d", &arr[i]);
    }
    for (i = 0; i <= 4; i++)
    {
        printf(" %d", arr[i]);
    }
    printf("\n");
    mergesort(arr, 0, 4);

    for (i = 0; i <= 4; i++)
    {
        printf(" %d ", arr[i]);
    }

    return 0;
}