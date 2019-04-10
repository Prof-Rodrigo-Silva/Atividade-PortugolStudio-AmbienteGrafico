	programa
{
	inclua biblioteca Teclado -->t
	inclua biblioteca Graficos-->g
	funcao inicio()
	{
	g.iniciar_modo_grafico(verdadeiro)
	g.definir_dimensoes_janela(800,300)
	g.definir_titulo_janela("Carregar Imagem")
	g.definir_cor(g.COR_PRETO)
	g.limpar()
	inteiro img = g.carregar_imagem("/home/fermat/Área de Trabalho/Videos Portugol Studio/foguete.jpg")
	g.desenhar_imagem(0, 0, img)
	g.renderizar()
	t.ler_tecla()
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 414; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */