function Factorize(n::IntType) where IntType <: Integer   #   разлагает число n на простые множители и возвращает результат в виде массива именножанных кортежей.
    list = NamedTuple{(:div, :deg), Tuple{IntType, IntType}}[]   # создает пустой массив который будет содержать именованные кортежи с инфо. о простых множ.
    for p in eratosphenes_sieve(Int(ceil(n/2)))   #   интерируем объект  по простым числам используя функцию. это позволит интерировать только до числа которое явл. половиной n
        k = degree(n, p)    #   вычисляет степень p в разложении числа n с использованием финкции degree/
        if k > 0   #   если степень больше нуля добавляет именованный кортеж в массив.
            push!(list, (div=p, deg=k))
        end
    end
    return list
end

function degree(n, p)    # вычисляет степень простого множителя p в разложении числа n. она считает сколько раз p делит n. возвращается полученная степень k.
    k=0
    n, r = divrem(n,p)
    while n > 0 && r == 0
        k += 1
        n, r = divrem(n,p)
    end
    return k
end
