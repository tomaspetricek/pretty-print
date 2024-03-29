//
// Created by Tomáš Petříček on 23.04.2022.
//

#ifndef PRETTYPRINT_PRETTIFIER_H
#define PRETTYPRINT_PRETTIFIER_H

#include <string>
#include <sstream>
#include <ostream>
#include <iostream>
#include <utility>
#include <utility>

#include "concepts.h"

std::string operator*(const std::string& base, std::size_t times)
{
    std::string res;

    for (std::size_t i{0}; i<times; i++) {
        res += base;
    }

    return res;
}

class prettifier {
    std::string indent_;
    std::string attr_div_;
    std::stringstream buff_;
    const static char end_{'\n'};
    const std::string iter_sep_{","};
    int depth_{0};

public:
    explicit prettifier(std::string indent, std::string attr_div)
            :indent_(std::move(indent)), attr_div_(std::move(attr_div)) { }

    template<typename type>
    prettifier& operator()(const std::string& name, const type& obj)
    {
        add_attr(name, obj);
        return *this;
    }

    void add_name(const std::string& name)
    {
        buff_ << indent_*depth_ << name;
    }

    template<typename value>
    void add_attr(const std::string& name, const value& val)
    {
        add_name(name);
        buff_ << attr_div_;
        add_val(val);
        buff_ << end_;
    }

    void add_attr(const std::string& name, const std::string& str)
    {
        add_name(name);
        buff_ << attr_div_;
        add_val(str);
        buff_ << end_;
    }

    void add_attr(const std::string& name, const raw_pointer auto& ptr)
    {
        add_name(name);
        buff_ << end_;
        add_val(*ptr);
    }

    void add_attr(const std::string& name, const object auto& obj)
    {
        add_name(name);
        buff_ << end_;
        add_val(obj);
    }

    void add_val(const fundamental auto& val)
    {
        buff_ << val;
    }

    void add_val(const std::string& str)
    {
        buff_ << str;
    }

    void add_val(const fundamental_iterable auto& it)
    {
        depth_++;
        buff_ << indent_*depth_;

        for (auto el = it.begin(); el!=it.end();) {
            add_val(*el);

            if (++el!=it.end())
                buff_ << iter_sep_ << ' ';
        }

        buff_ << end_;
        depth_--;
    }


    void add_val(const pairlike auto& p) {
        depth_++;
        add_attr("first", p.first);
        add_attr("second", p.second);
        depth_--;
    }

    void add_val(const object_iterable auto& it)
    {
        buff_ << indent_*depth_;

        for (auto el = it.begin(); el!=it.end();) {
            add_val(*el);
            buff_.seekp(-1, std::ios_base::end);

            if (++el!=it.end())
                buff_ << iter_sep_;

            buff_ << end_;
        }
    }

    void add_val(const nested_iterable auto& it)
    {
        for (const auto& el : it) {
            add_val(el);
        }
    }

    void add_val(const object auto& obj)
    {
        depth_++;
        obj.prettify(*this);
        depth_--;
    }

    void add_val(const raw_pointer auto& ptr)
    {
        add_val(*ptr);
    }

    std::string string()
    {
        return buff_.rdbuf()->str();
    }

    friend std::ostream& operator<<(std::ostream& os, prettifier& pret)
    {
        return os << pret.buff_.rdbuf();
    }
};

#endif //PRETTYPRINT_PRETTIFIER_H
