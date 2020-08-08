class CuentaBancaria
    attr_accessor :nombre_de_usuario

    def initialize(nombre_de_usuario, numero_de_cuenta, vip = 0)
        
        raise RangeError, "El número de cuenta no es de 8 dígitos" if numero_de_cuenta.split("").count !=8
        @nombre_de_usuario = nombre_de_usuario
        @numero_de_cuenta = numero_de_cuenta
        @vip = vip
    end

    def numero_de_cuenta
        puts "#{@vip}-#{@numero_de_cuenta}"
    end
end

CuentaNueva = CuentaBancaria.new("Tamara Rubilar", "00112233", 1)

CuentaNueva.numero_de_cuenta