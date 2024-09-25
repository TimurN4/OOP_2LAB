#pragma once

#include <string>
#include <iostream>

class oct
{
    public:
        oct();
        oct(const size_t &n, unsigned char t);
        oct(const std::initializer_list<unsigned char> &t);
        oct(const std::string &s);
        oct(const oct& other);
        oct(oct &&other) noexcept;
        virtual ~oct() noexcept;

        oct& operator=(const oct& other);
        oct& operator+=(const oct& other);
        oct& operator-=(const oct& other);

        bool operator>(const oct& other) const;
        bool operator<(const oct& other) const;
        bool operator==(const oct& other) const;
        bool operator>=(const oct& other) const;
        bool operator<=(const oct& other) const;
        bool operator!=(const oct& other) const;

        size_t getsize() const;
        unsigned char* getdata() const;

    private:
        size_t _size;
        unsigned char* _data;

        void ValidateDigit(unsigned char digit);
        void ValidateString(std::string s);
};