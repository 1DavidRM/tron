output = bin
source = src
include= -Iinclude
dependencias= -lftxui-screen -lftxui-dom -lftxui-component
flags= -std=c++2a $(dependencias) $(include)


run : $(output)/tron
	./$<

$(source)/tron : $(source)/main.cpp
	g++ -o $@ $<(source)/main.cpp $(flags)

runPantalla : $(output)/pantalla
	./$<


$(output)/pantalla : $(source)/pantalla.cpp
	g++ -o $@ $< $(flags)