#include "../include/oct.h"
#include <string>
#include <cmath>
#include <stdexcept>

void allocated(unsigned char* data) {
    if(!data) {throw 1; }
}

void valid_size(const size_t &n) {
    if(n <= 0) { throw std::invalid_argument("invalid size"); }
}

oct::oct() : _size{0}, _data{nullptr} {}

oct::oct(const size_t &n, unsigned char t) {
    valid_size(n);
    ValidateDigit(t);
    _size = n;
    _data = new unsigned char[n];
    allocated(_data);
    for(int i = 0; i < n; i++) {
        _data[i] = t;
    }
}

oct::oct(const std::initializer_list<unsigned char> &t) {
    std::string tmp = "";
    for(auto& x : t) {
        ValidateDigit(x);
        tmp += x;
    }

    int first = 0;
    for(int i = 0; i < t.size(); i++) {
        if(tmp[i]!='0') {
            first = i;
            break;
        }
    }
    _size = t.size() - first;
    _data = new unsigned char[_size];
    allocated(_data);

    for(int i = first; i < _size; i++) {
        _data[i - first] = tmp[i];
    }
}

oct::oct(const std::string &s) {
    ValidateString(s);
    int first = 0;
    for(int i = 0; i < _size; i++) {
        if(s[i]!='0') {
            first = i;
            break;
        }
    }
    _size = s.size() - first;
    _data = new unsigned char[_size];
    allocated(_data);

    for(int i = first; i < s.size(); i++) {
        _data[i - first] = s[i];
    }
}
oct::oct(const oct& other) {
    _size = other._size;
    _data = new unsigned char[_size];
    allocated(_data);
    for(size_t i = 0; i < _size; i++) {
        _data[i] = other._data[i];
    }
    //_data = other._data;
}
oct::oct(oct &&other) noexcept {
    _size = other._size;
    _data = other._data;
}
oct::~oct() noexcept {
    delete[] _data;
    _data = nullptr;
    _size = 0;
}

oct& oct::operator=(const oct& other) {
    if(this == &other) { return *this; }

    delete[] _data;
    _size = other._size;
    _data = new unsigned char[_size];
    allocated(_data);

    for(size_t i = 0; i < _size; i++) {
        _data[i] = other._data[i];
    }

    return *this;
}

oct& oct::operator+=(const oct& other) {
    int res1 = 0;
    for(size_t i = 0; i < other._size; i++) {
        res1 += (other._data[i] - '0') * pow(8, other._size - i - 1);
    }

    int res2 = 0;
    for(size_t i = 0; i < _size; i++) {
        res2 += (_data[i] - '0') * pow(8, _size - 1 - i);
    }

    int sm = res1 + res2;
    std::string tmp = "";
    while(sm != 0) {
        tmp = std::to_string(sm % 8) + tmp;
        sm /= 8;
    }
    
    delete[] this->_data;
    _size = tmp.size();
    _data = new unsigned char[_size];
    allocated(_data);
    for(size_t i = 0; i < tmp.size(); i++) {
        _data[i] = tmp[i];
    }

    return *this;
}
oct& oct::operator-=(const oct& other) {
    if(this->_size < other._size) { throw std::underflow_error("result would be negative"); }


    int res1 = 0;
    for(size_t i = other._size - 1; i >= 0; i--) {
        res1 += (other._data[i] - '0') * pow(8, other._size - i - 1);
    }

    int res2 = 0;
    for(size_t i = _size - 1; i >= 0; i--) {
        res2 += (_data[i] - '0') * pow(8, _size - i - 1);
    }

    int sm = res2 - res1;
    std::string tmp = "";
    while(sm != 0) {
        tmp = std::to_string(sm % 8) + tmp;
        sm /= 8;
    }
    
    delete[] this->_data;
    _size = tmp.size();
    _data = new unsigned char[_size];
    allocated(_data);
    for(size_t i = 0; i < tmp.size(); i++) {
        _data[i] = tmp[i];
    }

    return *this;
}

bool oct::operator>(const oct& other) const {
    if(this->_size > other._size) { return true; }

    int res1 = 0;
    for(size_t i = other._size - 1; i >= 0; i--) {
        res1 += (other._data[i] - '0') * pow(8, other._size - i - 1);
    }

    int res2 = 0;
    for(size_t i = _size - 1; i >= 0; i--) {
        res2 += (_data[i] - '0') * pow(8, _size - i - 1);
    }

    return res2 > res1;
}

bool oct::operator<(const oct& other) const {
    if(this->_size < other._size) { return true; }

    int res1 = 0;
    for(size_t i = other._size - 1; i >= 0; i--) {
        res1 += (other._data[i] - '0') * pow(8, other._size - i - 1);
    }

    int res2 = 0;
    for(size_t i = _size - 1; i >= 0; i--) {
        res2 += (_data[i] - '0') * pow(8, _size - i - 1);
    }

    return res2 < res1;
}

bool oct::operator>=(const oct& other) const {
    int res1 = 0;
    for(size_t i = other._size - 1; i >= 0; i--) {
        res1 += (other._data[i] - '0') * pow(8, other._size - i - 1);
    }

    int res2 = 0;
    for(size_t i = _size - 1; i >= 0; i--) {
        res2 += (_data[i] - '0') * pow(8, _size - i - 1);
    }

    return res2 >= res1;
}

bool oct::operator<=(const oct& other) const {
    int res1 = 0;
    for(size_t i = other._size - 1; i >= 0; i--) {
        res1 += (other._data[i] - '0') * pow(8, other._size - i - 1);
    }

    int res2 = 0;
    for(size_t i = _size - 1; i >= 0; i--) {
        res1 += (_data[i] - '0') * pow(8, _size - i - 1);
    }

    return res2 <= res1;
}

bool oct::operator==(const oct& other) const {
    if((_size == 0 && other._size == 0) || (_size == 0 && other._size > 0 && other._data[0] == '0') || (other._size == 0 && _size > 0 && _data[0] == '0')) {
        return true;
    }
    
    if(_size != other._size) { return false; }

    for(size_t i = 0; i < other._size; i++) {
        if(this->_data[i] != other._data[i]) { return false; }
    }
    return true;
}

bool oct::operator!=(const oct& other) const {
    if(_size != other._size) { return true; }

    for(size_t i = 0; i < other._size; i++) {
        if(this->_data[i] != other._data[i]) { return true; }
    }
    return false;
}

size_t oct::getsize() const
{
    return _size;
}

unsigned char* oct::getdata() const
{
    return _data;
}

void oct::ValidateDigit(unsigned char digit) {
    if(digit >= '8' || digit < '0') {
        throw std::invalid_argument("invalid oct digit");
    }
}

void oct::ValidateString(std::string s) {
    for(size_t i = 0; i < s.size(); i++) {
        ValidateDigit(s[i]);
        // if(s[i] > '9' && s[i] < '0') {
        //     throw std::invalid_argument("invalid stirng");
        // }
    }
}