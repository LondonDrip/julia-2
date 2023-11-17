function Diophantine_solve(a, b, c)   #решение диофантова ур. 
    d = gcd(a, b) # поиск НОД
    if c % d != 0
        return nothing
    end
    
    a_d, x0, y0 = extended_euclidean_algorithm(a, b) # вызывает расширенный алг. Евклида чтобы найти коэффициенты Безу и значение a_d которое явл. НОД для а и b
    x = x0 * (c ÷ d) # находит частное от деления c на d и умножает его на коэф. x0
    y = y0 * (c ÷ d) # находит частное от деления c на d и умножает его на коэф. у0
    
    return x, y
end
