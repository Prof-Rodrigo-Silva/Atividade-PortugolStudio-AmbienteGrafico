programa
{
	inclua biblioteca Util-->u
	inclua biblioteca Teclado-->t
	inclua biblioteca Graficos-->g
	funcao inicio()
	{inteiro v1,v2,v3
	g.iniciar_modo_grafico(verdadeiro)
	g.definir_dimensoes_janela(700, 500)
	g.definir_titulo_janela("quadrado")
	g.definir_cor(g.COR_PRETO)
	g.limpar()
	g.renderizar()
	v1=u.sorteia(0, 255)
	v2=u.sorteia(0, 255)
	v3=u.sorteia(0, 255)
	inteiro cor = g.criar_cor(v1,v2,v3)
	g.definir_cor(cor)
	g.desenhar_retangulo(200,100,300, 300, falso, verdadeiro)
	g.renderizar()
	inteiro tecla =  t.ler_tecla()
	se (tecla==t.TECLA_ESPACO ){
		g.definir_cor(g.COR_PRETO)
		g.limpar()
		g.definir_cor(cor)
		g.desenhar_elipse(230, 150, 200, 200, verdadeiro)
		g.renderizar()
		u.aguarde(10000)
	}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 718; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */