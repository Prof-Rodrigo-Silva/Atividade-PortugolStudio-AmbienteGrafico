//Exercício: Desenhe duas linhas, formando um X e unindo os cantos da tela.
programa
{
	inclua biblioteca Util --> u
	inclua biblioteca Graficos --> g
	
	funcao inicio()
	{
		g.iniciar_modo_grafico(verdadeiro)
		g.definir_dimensoes_janela(700, 500)
		g.definir_titulo_janela("Exercício 01")
		g.definir_cor(g.COR_AZUL)
		g.limpar()

		g.definir_cor(g.COR_BRANCO)
		g.desenhar_linha(700, 0, 0, 500)
		g.desenhar_linha(0, 0, 700, 500)

		g.renderizar()
		u.aguarde(1000)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 75; 
 * @PONTOS-DE-PARADA = 19;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */