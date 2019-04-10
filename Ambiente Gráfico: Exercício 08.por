	programa
	{
	inclua biblioteca Graficos-->g
	inclua biblioteca Teclado -->t
	funcao inicio()
	{
	g.iniciar_modo_grafico(verdadeiro)
	g.definir_dimensoes_janela(800,300)
	g.definir_titulo_janela("Mover Imagem")
	g.definir_cor(g.COR_BRANCO)
	g.limpar()
	inteiro img = g.carregar_imagem("/home/fermat/Área de Trabalho/Videos Portugol Studio/foguete.jpg")
	para (inteiro x=0;x<585;x+=10){
	g.definir_cor(g.COR_BRANCO)
	g.limpar()
	g.desenhar_imagem(x, 0, img)
	g.renderizar()
	t.ler_tecla()
	}
	}
}
		
		
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 11; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */