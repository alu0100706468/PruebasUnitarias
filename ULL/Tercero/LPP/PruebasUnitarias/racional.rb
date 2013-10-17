# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion
  
  attr_reader :n, :d
  
  #Constructor
  #Recibe numerador y denominador y los almacena simplificados
  def initialize(n, d)
    @n = n/gcd(n, d)
    @d = d/gcd(n, d)
  end
  
  #To String 
  #Devuelve una cadena con la representación del racional
  def to_s
    "#@n/#@d"
  end
  
  #Suma 
  #Devuelve un nuevo racional que suma al objeto que invoca el que le pasan como parámetro
  def +(other)
    mcm=(@d*other.d)/gcd(@d,other.d)
    Fraccion.new(((mcm/@d)*@n) + ((mcm/other.d)*other.n), mcm)
  end
  
  #Resta 
  #Devuelve un nuevo racional que resta al objeto que invoca el que le pasan como parámetro
  def -(other)
    mcm=(@d*other.d)/gcd(@d,other.d)
    Fraccion.new(((mcm/@d)*@n) - ((mcm/other.d)*other.n), mcm)
  end
  
  #Producto 
  #Devuelve un nuevo racional que multiplica al objeto que invoca el que le pasan como parámetro
  def *(other)
    Fraccion.new(@n * other.n, @d * other.d)
  end 
  
  #Division 
  #Devuelve un nuevo racional que divide al objeto que invoca el que le pasan como parámetro
  def /(other)
    Fraccion.new(@n * other.d, @d * other.n)
  end
  
end

p=Fraccion.new(6, 12)
q=Fraccion.new(18, 14)
puts "Esto es p: "
puts p
puts "Esto es q: "
puts q
puts "Multiplicación: "
puts p*q
puts "División: "
puts p/q
puts "Suma: "
puts p+q
puts "Resta: "
puts p-q