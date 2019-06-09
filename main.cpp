#include <iostream>
#include <omp.h>
#include <chrono>
#include <random>
#include <time.h>
#include <math.h>

using namespace std;

const int QUANTITY_OF_CUBES = 600;
const int QUANTITY_OF_ITERATIONS = 200;
const int M_PI = 3.14;

unsigned short cubeValues[QUANTITY_OF_CUBES]; //przechowuje wartosci wszystkich kostek
unsigned short cubeSum = 0;

long double entropyResult;

/*
 * RESULTS WITH OMP
Time of set up value on cube matrix: 0.0018729
Time of calculate: 0.0415467

 *RESULTS WITHOUT OMP
Time of set up value on cube matrix: 1.4e-06
Time of calculate: 0.0116614
 */

//void wait(int milis) {
//    time_t end;
//    end = clock() + milis;
//    while (end > clock()) {};
//}

double StirlingPattern(int value)
{
    if (value != 0)
    {
        double firstPart = 0;
        int i;
#pragma omp parallel for private(i) reduction(+ : firstPart)
        for (i = 1; i <= value; i++)
        {
            firstPart += log(value / exp(1));
        }

        double secondPart = log(sqrt(2 * value * M_PI));

        return firstPart + secondPart;
    }

    return 0;
}

long double EntropyCalculator(int n, int *matrix)
{
    long double counter = StirlingPattern(n);
    long double denominator = 0;
    int i;

#pragma omp parallel for private(i) reduction(+ : denominator)
    for (i = 0; i < 6; i++)
    {
        denominator += StirlingPattern(matrix[i]);
    }

    return counter - denominator;
}

int main()
{
    srand(time(NULL));

    auto timeSetUpValueOnCubeMatrixStart = chrono::high_resolution_clock::now();

    int i, j;
    // Time of setting up values on cube matrix: 0.0011075
#pragma omp parallel for private(i) shared(cubeValues)
    for (i = 0; i < QUANTITY_OF_CUBES; i++)
    {
//        wait(1);
        cubeValues[i] = 0;
    }

    auto timeSetUpValueOnCubeMatrixFinish = chrono::high_resolution_clock::now();
    chrono::duration<double> elapsedTimeOfSettingUpValuesOnCubeMatrix = timeSetUpValueOnCubeMatrixFinish - timeSetUpValueOnCubeMatrixStart;
    auto timeCalculateStart = chrono::high_resolution_clock::now();

    // Time of calculation: 0.0466853
#pragma omp parallel for private(i, j) reduction(+ : cubeSum)
    for (i = 0; i < QUANTITY_OF_ITERATIONS; i++)
    {
        int allCubeValuesMatrix[6] = { 0, 0, 0, 0, 0, 0 };
       // cubeSum = 0;
        // Time of calculation: 0.0467462
        //#pragma omp parallel for private(j) reduction(+ : cubeSum)
        for (j = 0; j < QUANTITY_OF_CUBES; j++)
        {
//            wait(1);
            int chanceToChange = rand() % 20 + 1;

            if (chanceToChange == 5)
            {
                int randomCubeValue = rand() % 6;
                cubeValues[j] = randomCubeValue;
            }

            allCubeValuesMatrix[cubeValues[j]] += 1;
           // cubeSum++;
        }

        entropyResult = EntropyCalculator(QUANTITY_OF_CUBES, allCubeValuesMatrix);
cubeSum=allCubeValuesMatrix[0]+allCubeValuesMatrix[1]+allCubeValuesMatrix[2]+allCubeValuesMatrix[3]+allCubeValuesMatrix[4]+allCubeValuesMatrix[5];
#pragma omp critical
        cout << allCubeValuesMatrix[0] << ' ' << allCubeValuesMatrix[1] << ' ' << allCubeValuesMatrix[2] << ' '
             << allCubeValuesMatrix[3] << ' ' << allCubeValuesMatrix[4] << ' ' << allCubeValuesMatrix[5] << " : "
             << entropyResult << " : " << cubeSum << endl;
    }

    auto timeCalculateFinish = chrono::high_resolution_clock::now();
    chrono::duration<double> elapsedTimeOfCalculation = timeCalculateFinish - timeCalculateStart;

    cout << "Time of setting up values on cube matrix: " << elapsedTimeOfSettingUpValuesOnCubeMatrix.count() << endl;
    cout << "Time of calculation: " << elapsedTimeOfCalculation.count() << endl;

    getchar();
    return 0;
}