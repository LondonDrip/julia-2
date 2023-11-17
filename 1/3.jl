function invmod1(a::T, M::T) where T   # вычисление обратного элемента.
    d, x, y = extended_euclidean_algorithm(a, M)  
    if d == 1  # проверяет является ли НОД = 1 
        return mod(x, M)  # если условие выполняется то а и М взаимно просты и обратный эл существует. и возвращает остаток от деления х на М
    else
        return nothing
    end
end
