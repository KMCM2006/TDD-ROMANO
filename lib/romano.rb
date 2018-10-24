class Romano
    ValoresBasicos = {
        1 => "I",
        4 => "IV",
        5 => "V",
        9 => "IX",
        10 => "X",
        20 => "X",
        30 => "X",
        40 => "XL",
        50 => "L",
        90 => "XC",
        100 => "C",
        200 => "C",
        300 => "C",
        400 => "CD",
        500 => "D",
        900 => "CM",
        1000 => "M"
    }

    def generar(nro)
        if(nro>=1)
          return "I"
        end
    end

    def generarMenoresIgualesATres(nro)
        resultado = ""
        for valor in (1..nro) do
            resultado = resultado + generar(nro)
        end
        return resultado
    end

    def generarValoresBasicos(nro)
        return ValoresBasicos[nro]
    end

    def generarRomano(nro)
        resultado = ""
        if(nro >= 900)
            resultado = resultado + generarValoresBasicos(900)
        end
        if(nro >= 500)
            resultado = resultado + generarValoresBasicos(500)
        end
        if(nro >= 300)
            resultado = resultado + generarValoresBasicos(300)
        end
        if(nro >= 200)
            resultado = resultado + generarValoresBasicos(200)
        end
        if(nro >= 100)
            resultado = resultado + generarValoresBasicos(100)
        end
        if(nro >= 90)
            resultado = resultado + generarValoresBasicos(90)
        end
        if(nro >= 50)
            resultado = resultado + generarValoresBasicos(50)
        end
        if(nro >= 40)
            resultado = resultado + generarValoresBasicos(40)
        end
        if(nro >= 30)
            resultado = resultado + generarValoresBasicos(30)
        end
        if(nro >= 20)
            resultado = resultado + generarValoresBasicos(20)
        end
        if(nro >= 10)
            resultado = resultado + generarValoresBasicos(10)
        end
        if(nro >= 9)
            resultado = resultado + generarValoresBasicos(9)
        end
        if(nro >= 5)
            resultado = resultado + generarValoresBasicos(5)
        end
        if(nro >= 4)
            resultado = resultado + generarValoresBasicos(4)
            nro = nro - 4;
        end
        resultado = resultado +generarMenoresIgualesATres(nro)
        return resultado
    end
end