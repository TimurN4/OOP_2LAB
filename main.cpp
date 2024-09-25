#include <iostream>
#include "src/oct.cpp"

int main()
{
    try
    {
        std::string bin1, bin2;
        std::cout << "Enter first oct number: ";
        std::cin >> bin1;

        std::cout << "Enter second oct number: ";
        std::cin >> bin2;

        oct Numb1(bin1);
        oct Numb2(bin2);

        Numb1 += Numb2;

        std::cout << "Result of addition: ";
        for (size_t i = 0; i < Numb1.getsize(); ++i)
        {
            std::cout << Numb1.getdata()[i];
        }
        std::cout << std::endl;
    }
    catch (const std::exception &e)
    {
        std::cerr << "Exception: " << e.what() << std::endl;
    }

    return 0;
}