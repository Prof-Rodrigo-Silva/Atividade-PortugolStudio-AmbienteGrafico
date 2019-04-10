//Exercício: Criar uma janela e mostrar a hora atual e uma saudação conforme a hora do dia!
programa
{
	inclua biblioteca Calendario --> c
	inclua biblioteca Graficos --> g
	const inteiro LarguraT = 600
	const inteiro AlturaT = 400
	inteiro horarioH = c.hora_atual(falso)
	inteiro horarioM = c.minuto_atual()

	funcao inicio()
	{
		
		desenharTela()
		enquanto(verdadeiro)
		{
			cor_FundoPadrao()
			g.definir_cor(g.COR_PRETO)
			g.definir_tamanho_texto(14.0)
			g.desenhar_texto(50, 50, "Agora são: " + horarioH + " horas e "+ horarioM + " minutos")
			g.renderizar()	
		}
		
	}
	
	funcao desenharTela()
	{
		g.iniciar_modo_grafico(verdadeiro)
		g.definir_titulo_janela("Capturando Hora")
		g.definir_dimensoes_janela(LarguraT, AlturaT)
		
	}

	funcao cor_FundoPadrao()
	{
		g.definir_cor(g.COR_BRANCO)
		g.limpar()
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 308; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */