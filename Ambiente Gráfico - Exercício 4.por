programa
{
	inclua biblioteca Util-->u
	inclua biblioteca Graficos-->g
	funcao inicio()
	{
	inteiro c1,c2,c3, xp, yp
	g.iniciar_modo_grafico(verdadeiro)
	g.definir_dimensoes_janela(700, 500)
	g.definir_titulo_janela("quadrado")

	g.definir_cor(g.COR_PRETO)
	g.limpar()
	g.renderizar()
	para (inteiro x=0;x<500;x++){
		xp=u.sorteia(1, 600)
		yp=u.sorteia(1, 400)
		c1=u.sorteia(0, 255)
		c2=u.sorteia(0, 255)
		c3=u.sorteia(0, 255)
		inteiro cor = g.criar_cor(c1,c2,c3)
		g.definir_cor(cor)
		g.desenhar_retangulo(xp,yp,100, 100, falso, verdadeiro)
		g.renderizar()
		u.aguarde(2000)
	}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 40; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */