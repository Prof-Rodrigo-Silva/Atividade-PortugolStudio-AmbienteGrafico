programa
{
	inclua biblioteca Graficos --> g
	inclua biblioteca Util --> u
	funcao inicio()
	{
	inteiro x = 0,y = 0
	g.iniciar_modo_grafico(verdadeiro)
	g.definir_dimensoes_janela(700, 500)
	g.definir_titulo_janela("Circulo Aleatório")
	g.definir_cor(g.COR_AZUL)
	g.limpar()
	x=u.sorteia(1, 500)
	y=u.sorteia(1, 300)
	g.definir_cor(g.COR_VERDE)
	g.desenhar_elipse(x, y, 200, 200, verdadeiro)
	g.renderizar()
	u.aguarde(10000)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 430; 
 * @PONTOS-DE-PARADA = 17;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */