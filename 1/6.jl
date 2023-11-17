struct Polynom{T}   # определяет структуру полтном параментризованную типом T.
    coeffs::Vector{T}

    function Polynom(coeffs::Vector{T}) where {T<:Number}  # принимает вектор коэф. и создает объект полином. внутри конструктора удаляются ведущие нулевые коэф, чтобы уменьшить размер вектора коэф.
        while length(coeffs) > 1 && coeffs[end] == zero(T)
            pop!(coeffs)
        end
        return new{T}(coeffs)
    end
end


import Base: +, -, *, show

#Операция +
+(a::Polynom{T}, b::Polynom{T}) where {T<:Number} = Polynom{T}(a.coeffs + b.coeffs) #выполняется поэлементно

#Операция -
-(a::Polynom{T}, b::Polynom{T}) where {T<:Number} = Polynom{T}(a.coeffs - b.coeffs)  #выполняется поэлементно

#Унарный -
-(a::Polynom{T}) where {T<:Number} = Polynom{T}(-a.coeffs)  # применяется к каждому коэф полинома.
