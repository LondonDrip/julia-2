function extended_euclidean_algorithm(a, b)  #нахождение нод через расширенный алгоритм Евклида.
    if b == 0
        return a, 1, 0    # возвращает значения а,1,0, если b равно 0 
    else
        d, x, y = extended_euclidean_algorithm(b, a % b) #возвращве значения d,x,y где d это НОД, а х и у это коэффициенты.
        return d, y, x - (a ÷ b) * y   # это выражение обновляет значения х и у используя свойства коффициентов Безу.
    end
end
