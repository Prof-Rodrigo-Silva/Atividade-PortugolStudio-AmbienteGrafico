//Exercício: Utilize as funções de desenho da biblioteca gráfica e crie um botão que execute uma ação quando for clicado com o
//botão esquerdo do mouse(biblioteca Mouse)

programa
{
	inclua biblioteca Mouse --> m
	inclua biblioteca Calendario --> c
	inclua biblioteca Graficos --> g
	const inteiro LarguraT = 600
	const inteiro AlturaT = 400
	inteiro horarioH = c.hora_atual(falso)
	inteiro horarioM = c.minuto_atual()
	cadeia Cumprimento = ""
	

	funcao inicio(){
		desenharTela()
		enquanto(verdadeiro){
			cor_FundoPadrao()
			horarioAtual(horarioH)
			interacaoBotaoPlay()
			g.definir_cor(g.COR_PRETO)
			g.definir_tamanho_texto(14.0)
			g.desenhar_texto(50, 30,Cumprimento + " Seja Bem Vindo.")
			g.desenhar_texto(50, 50, "Agora são: " + horarioH + " horas e "+ horarioM + " minutos")
			g.renderizar()
		}	
	}
	funcao desenharTela(){
		g.iniciar_modo_grafico(verdadeiro)
		g.definir_titulo_janela("Botão de Interação")
		g.definir_dimensoes_janela(LarguraT, AlturaT)
		
	}
	funcao cor_FundoPadrao(){
		g.definir_cor(g.COR_BRANCO)
		g.limpar()
	}
	funcao horarioAtual(inteiro hora){
		se(hora >= 5 e hora < 12){
			Cumprimento = "Bom Dia!"
		}senao se(hora >= 12 e hora <= 17){
			Cumprimento = "Boa Tarde!"
		}senao{
			Cumprimento = "Boa Noite!"
		}
	}
	funcao interacaoBotaoPlay(){
		g.definir_cor(g.criar_cor(100, 100, 100))
		g.desenhar_retangulo(120, 320, 90, 35, verdadeiro, verdadeiro)
		g.definir_cor(g.COR_PRETO)
		g.definir_tamanho_texto(16.0)
		g.desenhar_texto(145, 330, "Play")	
		se(mouse(115, 315, 90, 35) == verdadeiro e m.botao_pressionado(m.BOTAO_ESQUERDO)){
			g.desenhar_retangulo(120, 320, 90, 35, verdadeiro, falso)
			g.definir_cor(g.COR_PRETO)
		     g.definir_tamanho_texto(20.0)
		     g.desenhar_texto(145, 200, "Play")
			
		}
		//se (m.botao_pressionado(m.BOTAO_ESQUERDO)){}
	}		
	funcao logico mouse(inteiro x, inteiro y, inteiro a, inteiro b)
	{
		se(m.posicao_x() >= x e m.posicao_y() >= y e m.posicao_x() <= x+a e m.posicao_y() <= y+b)
		{
			retorne verdadeiro
		}
		retorne falso
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 170; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */