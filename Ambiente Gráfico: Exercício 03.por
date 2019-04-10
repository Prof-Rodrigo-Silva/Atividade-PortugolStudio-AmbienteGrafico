programa
{
	inclua biblioteca Graficos --> g
	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		g.iniciar_modo_grafico(verdadeiro)
		g.definir_titulo_janela("Exercício 03 - Borda")
		g.definir_dimensoes_janela(800, 600)
		g.definir_cor(g.COR_PRETO)
		g.limpar()

		g.definir_cor(g.COR_BRANCO)
		g.desenhar_retangulo(50, 50, 700, 500, falso, verdadeiro)
		g.renderizar()
		u.aguarde(10000)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 354; 
 * @PONTOS-DE-PARADA = 16;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */