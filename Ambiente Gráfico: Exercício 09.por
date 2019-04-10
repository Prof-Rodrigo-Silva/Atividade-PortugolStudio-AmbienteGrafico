programa
	{
	inclua biblioteca Graficos-->g
	inclua biblioteca Teclado -->t
	funcao inicio()
	{
	inteiro seta, x=200
	g.iniciar_modo_grafico(verdadeiro)
	g.definir_dimensoes_janela(800,300)
	g.definir_titulo_janela("Mover Imagem")
	g.definir_cor(g.COR_BRANCO)
	g.limpar()
	inteiro img = g.carregar_imagem("/home/fermat/Área de Trabalho/Videos Portugol Studio/foguete.jpg")
	g.desenhar_imagem(x, 0, img)
	g.renderizar()
	para (inteiro i=0;i<1000;i++){
		g.definir_cor(g.COR_BRANCO)
		g.limpar()
		seta = t.ler_tecla()
		se(seta == t.TECLA_SETA_DIREITA){
			g.desenhar_imagem(x+20, 0, img)
			g.renderizar()
			g.limpar()
			x+=20
			}
		se(seta == t.TECLA_SETA_ESQUERDA){
			g.desenhar_imagem(x-20, 0, img)
			g.renderizar()
			g.limpar()
			x-=20
			}
	}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 759; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */