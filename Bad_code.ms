print "K stands for Kelvin"
unit = input("Enter the unit you would like to enter data in (C, F, or K): ").upper

if unit == "C" then
    C = val(input("Nice, I like people who use Celsius! Enter temperature in °C: "))
    F = C * 9 / 5 + 32
    K = C + 273.15
    print "Temperature in Kelvin: " + K
    print "Temperature in Fahrenheit: " + F
else if unit == "F" then
    F = val(input("Nice, I like people who use Fahrenheit! Enter temperature in °F: "))
    C = (F - 32) * 5 / 9
    K = C + 273.15
    print "Temperature in Celsius: " + C
    print "Temperature in Kelvin: " + K
else if unit == "K" then
    K = val(input("Nice, I like people who use Kelvin! Enter temperature in K: "))
    C = K - 273.15
    F = C * 9 / 5 + 32
    print "Temperature in Celsius: " + C
    print "Temperature in Fahrenheit: " + F
else
    print "Invalid input! Please enter C, F, or K."
end if
