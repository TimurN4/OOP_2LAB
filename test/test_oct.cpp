#include <gtest/gtest.h> 
#include <stdexcept> 
#include "../include/oct.h" 
 
TEST(octtest, default_constructor) { 
    oct number(1, '0'); 
    oct numberDefault; 
     
    bool result = number == numberDefault;     
    ASSERT_TRUE(result == true); 
} 
 
TEST(octtest, incorrect_digit_length_constructor) { 
    EXPECT_THROW(oct number(1, '8'), std::invalid_argument); 
    EXPECT_THROW(oct number(1, 'a'), std::invalid_argument); 
} 
 
TEST(octtest, incorrect_length_length_constructor) { 
    EXPECT_THROW(oct number(0, '0'), std::invalid_argument); 
} 
 
TEST(octtest, leading_zeros_length_constructor) { 
    oct numberMultiZeros(2, '0'); 
    oct numberZero; 
 
    bool result = numberMultiZeros == numberZero;     
    ASSERT_TRUE(result == true); 
} 
 
TEST(octtest, init_list_constructor) { 
    oct numberRef(3, '1'); 
    oct number{'1', '1', '1'}; 
 
    bool result = number == numberRef;     
    ASSERT_TRUE(result == true); 
} 
 
TEST(octtest, incorrect_digit_init_list_constructor) { 
    std::initializer_list<unsigned char> num1List = {'8'}; 
    std::initializer_list<unsigned char> num2List = {'1', '2', '9', '0'}; 
    std::initializer_list<unsigned char> num3List = {'1', '8', '5', '0', '6'}; 
 
    EXPECT_THROW(oct number{num1List}, std::invalid_argument); 
    EXPECT_THROW(oct number{num2List}, std::invalid_argument); 
    EXPECT_THROW(oct number{num3List}, std::invalid_argument); 
} 
 

 
TEST(octtest, str_constructor) { 
    oct numberRef{'1', '2', '3'}; 
    oct number("123"); 
 
    bool result = number == numberRef; 
    ASSERT_TRUE(result == true); 
} 
 
TEST(octtest, incorrect_digit_str_constructor) { 
    EXPECT_THROW(oct number("8"), std::invalid_argument); 
    EXPECT_THROW(oct number("1290"), std::invalid_argument); 
    EXPECT_THROW(oct number("12509"), std::invalid_argument); 
} 
 
TEST(octtest, leading_zeros_str_constructor) { 
    oct number1("0012340"); 
    oct number2("12340"); 
 
    bool result = number1 == number2;     
    ASSERT_TRUE(result == true); 
} 
 
TEST(octtest, copy_constructor) { 
    oct number1("12345"); 
    oct number2{number1}; 
 
    bool result = number1 == number2; 
    ASSERT_TRUE(result == true); 
} 
 
TEST(octtest, move_constructor) { 
    oct numberOriginal("12345"); 
    oct numberOriginalCopy{numberOriginal}; 
    oct number{std::move(numberOriginal)}; 
 
    bool result = numberOriginalCopy == numberOriginalCopy; 
    ASSERT_TRUE(result == true); 
} 
 
TEST(octtest, assigment) { 
    oct number1; 
    oct number2("12345"); 
 
    number1 = number2; 
     
    bool result = number1 == number2; 
    ASSERT_TRUE(result == true); 
} 
 
TEST(octtest, self_assigment) { 
    oct number; 
    EXPECT_THROW(number = number, std::logic_error); 
} 


TEST(octtest, ComparisonOperators) {
    oct number1({'3', '2', '1'});
    oct number2({'3', '2', '1'});
    oct number3({'1', '2', '3'});

    bool is1Equal2 = (number1 == number2);
    bool is1Equal3 = (number1 == number3);
    bool is1LessThan2 = (number1 < number2);
    bool is1GreaterThan2 = (number1 > number2);
    bool is1LessThanNumber3 = (number1 < number3);
    bool is1GreaterThanNumber3 = (number1 > number3);

    ASSERT_TRUE(is1Equal2 == true);
    ASSERT_TRUE(is1Equal3 == false);
    ASSERT_TRUE(is1LessThan2 == false);
    ASSERT_TRUE(is1GreaterThan2 == false);
    ASSERT_TRUE(is1LessThanNumber3 == false);
    ASSERT_TRUE(is1GreaterThanNumber3 == true);
}

TEST(octtest, add_zero) { 
    oct number1("1234"); 
    oct number1Copy{number1}; 
    oct numberZero; 
 
    number1 += numberZero; 
 
    int result = number1 == number1Copy; 
    ASSERT_TRUE(result == true); 
} 
 
TEST(octtest, add) { 
    oct number1("1023"); 
    oct number2("35"); 
    oct numberRes("1060"); 
 
    number1 += number2; 
 
    int result = number1 == numberRes; 
    ASSERT_TRUE(result == true); 
} 
 
TEST(octtest, add_extend) { 
    oct number1("77777"); 
    oct number2("1"); 
    oct numberRes("100000"); 
 
    number1 += number2; 
 
    int result = number1 == numberRes; 
    ASSERT_TRUE(result == true); 
}

TEST(octtest, sub_zero) { 
    oct number1("1234"); 
    oct number1Copy{number1}; 
    oct numberZero; 
 
    number1 -= numberZero; 
 
    int result = number1 == number1Copy; 
    ASSERT_TRUE(result == true); 
} 
 
TEST(octtest, sub) { 
    oct number1("1060"); 
    oct number2("35"); 
    oct numberRes("1023"); 
 
    number1 -= number2; 
 
    int result = number1 == numberRes; 
    ASSERT_TRUE(result == true); 
} 
 
TEST(octtest, sub_extend) { 
    oct number1("100000"); 
    oct number2("77777"); 
    oct numberRes("1"); 
 
    number1 -= number2; 
 
    int result = number1 == numberRes; 
    ASSERT_TRUE(result == true); 
}

TEST(octtest, substruction_error) { 
    oct number1("1234"); 
    oct number2("2345");
 
    EXPECT_THROW(number1 -= number2, std::logic_error); 
} 

int main(int argc, char **argv) {
    testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}