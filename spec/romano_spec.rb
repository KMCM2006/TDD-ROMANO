require './lib/romano'

describe Romano do

    before :each do
        @fb = Romano.new()
    end

    it "deberia mostrar 'I' cuando el nro es '1'" do
        expect(@fb.generar(1)).to eq "I"
    end

    it "deberia mostrar 'II' cuando el nro es '2'" do
        expect(@fb.generarMenoresIgualesATres(2)).to eq "II"
    end

    it "deberia mostrar 'III' cuando el nro es '3'" do
        expect(@fb.generarMenoresIgualesATres(3)).to eq "III"
    end

    it "deberia mostrar 'IV' cuando el nro es '4'" do
        expect(@fb.generarRomano(4)).to eq "IV"
    end

    it "deberia mostrar 'V' cuando el nro es '5'" do
        expect(@fb.generarValoresBasicos(5)).to eq "V"
    end

    it "deberia mostrar 'X' cuando el nro es '10'" do
        expect(@fb.generarValoresBasicos(10)).to eq "X"
    end

    it "deberia mostrar 'L' cuando el nro es '50'" do
        expect(@fb.generarValoresBasicos(50)).to eq "L"
    end

    it "deberia mostrar 'C' cuando el nro es '100'" do
        expect(@fb.generarValoresBasicos(100)).to eq "C"
    end

    it "deberia mostrar 'M' cuando el nro es '1000'" do
        expect(@fb.generarValoresBasicos(1000)).to eq "M"
    end

end
