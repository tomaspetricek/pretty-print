//
// Created by Tomáš Petříček on 23.04.2022.
//

#ifndef PRETTYPRINT_CONCEPTS_H
#define PRETTYPRINT_CONCEPTS_H

#include <type_traits>
#include <concepts>
#include <string>


template<typename T>
concept fundamental = std::is_fundamental<T>::value;

template<class T>
concept object = std::is_class<T>::value;

template<typename T>
concept raw_pointer = std::is_pointer<T>::value;

template<typename T>
concept iterable = (object<T> && requires(T it)
{
    it.begin();
    it.end();
});

template<typename T>
concept pairlike = (object<T> && requires(T pair)
{
    pair.first;
    pair.second;
});

template<typename T>
concept fundamental_iterable = iterable<T> && fundamental<typename T::value_type>;

template<typename T>
concept object_iterable = iterable<T> && object<typename T::value_type>;

template<typename T>
concept nested_iterable = iterable<T> && iterable<typename T::value_type>;

#endif //PRETTYPRINT_CONCEPTS_H
