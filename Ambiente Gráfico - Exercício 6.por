programa
{
	inclua biblioteca Mouse --> m
	inclua biblioteca Graficos --> g
	inclua biblioteca Util --> u
	funcao inicio()
	{
	inteiro p1, p2
	g.iniciar_modo_grafico(verdadeiro)
	g.definir_dimensoes_janela(700, 500)
	g.definir_titulo_janela("Mouse")
	g.definir_cor(g.COR_PRETO)
	g.limpar()
	g.renderizar()

	inteiro mouse = m.ler_botao()
	
	para(inteiro x = 0; x < 200; x++){
			se(mouse == m.BOTAO_ESQUERDO){
				p1 = m.posicao_x()
				p2 = m.posicao_y()				
				g.definir_cor(g.COR_PRETO)
				g.limpar()
				g.definir_cor(g.COR_BRANCO)
				g.desenhar_elipse(p1-50, p2-50, 100, 100, verdadeiro)
				g.renderizar()
				m.ler_botao()
				}
	}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 574; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */