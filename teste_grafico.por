programa
{
	inclua biblioteca Util --> u
	inclua biblioteca Graficos --> g
	
	
	funcao inicio()
	{
		inteiro imagem = g.carregar_imagem("rodrigo.jpg")
		g.iniciar_modo_grafico(verdadeiro)
		g.definir_dimensoes_janela(1000, 600)
		g.definir_titulo_janela("Primeiro Projeto")

		inteiro nova_cor = g.criar_cor(1, 100, 100)		
		g.definir_cor(g.COR_BRANCO)
		g.limpar()

		//g.definir_cor(nova_cor)
		//g.desenhar_elipse(100, 100, 250, 150, verdadeiro)
		g.definir_cor(g.COR_AZUL)
		//g.desenhar_retangulo(400, 300, 200, 50, verdadeiro, verdadeiro)
		//g.desenhar_imagem(100, 0, imagem)
		g.desenhar_texto(200, 50, "Primeiro Teste")
		g.definir_tamanho_texto(50.0)
		g.renderizar()
		u.aguarde(100000)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 150; 
 * @PONTOS-DE-PARADA = 25;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */