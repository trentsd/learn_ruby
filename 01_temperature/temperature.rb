def ftoc(temp)
    temp = temp.to_f
    celcius = (temp - 32) * (5.0/9.0)
    return celcius
end

def ctof(temp)
    temp = temp.to_f
    fahrenheit = temp * 9.0/5.0 + 32
    return fahrenheit
end
