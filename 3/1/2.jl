function Resheto_Eratosfena(n::Integer)
    simple_i = ones(Bool, n)    #создает булев массив длинной n все элементы которого в true.
    simple_i[begin] = false   # устанавливает значение false для первого эл. т.к. 1 не явл простым числом.
    i = 2
    simple_i[i^2:i:n] .= false # отмечает все числа кратные 2, начиная с квадрата 2 и до n.
    i=3
   
    while i <= n
        simple_i[i^2:2i:n] .= false   #отмечает все числа кратные i начиная с кватдрата i и так до n.
        i+=1
        while i <= n && simple_i[i] == false   #пропускает все составные чила пока не найдет следующее простое число.
            i+=1
        end

    end
    return findall(simple_i)    # возвращает массив индексов простых чисел где соотв. эл. simple_i равны true
end
