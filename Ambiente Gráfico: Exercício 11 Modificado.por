//Exercício: Modifique o exercício anterior para além da hora, mostrar uma saudação (Bom dia, Boa tarde ou Boa noite) conforme 
//a hora atual.
programa
{
	inclua biblioteca Calendario --> c
	inclua biblioteca Graficos --> g
	const inteiro LarguraT = 600
	const inteiro AlturaT = 400
	inteiro horarioH = c.hora_atual(falso)
	inteiro horarioM = c.minuto_atual()
	cadeia Cumprimento = ""

	funcao inicio()
	{
		
		desenharTela()
		enquanto(verdadeiro)
		{
			cor_FundoPadrao()
			horarioAtual(horarioH)
			g.definir_cor(g.COR_PRETO)
			g.definir_tamanho_texto(14.0)
			g.desenhar_texto(50, 30,Cumprimento + " Seja Bem Vindo.")
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
	funcao horarioAtual(inteiro hora)
	{
		se(hora >= 5 e hora < 12){
			Cumprimento = "Bom Dia!"
		}senao se(hora >= 12 e hora <= 17){
			Cumprimento = "Boa Tarde!"
		}senao{
			Cumprimento = "Boa Noite!"
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 130; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */