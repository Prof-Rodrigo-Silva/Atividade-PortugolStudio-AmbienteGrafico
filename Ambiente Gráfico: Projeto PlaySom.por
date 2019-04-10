programa
{
	
	inclua biblioteca Mouse --> m
	inclua biblioteca Calendario --> c
	inclua biblioteca Graficos --> g
	inclua biblioteca Sons --> s
	inclua biblioteca Texto --> tx
	inclua biblioteca Tipos --> tp
	const inteiro LarguraT = 900
	const inteiro AlturaT = 443
	inteiro horarioH = c.hora_atual(falso)
	inteiro horarioM = c.minuto_atual()
	cadeia Cumprimento = ""
	inteiro som = s.carregar_som("/home/fermat/Área de Trabalho/Videos Portugol Studio/Mysteries.mp3")
	cadeia caminhoSom = "/home/fermat/Área de Trabalho/Videos Portugol Studio/Mysteries.mp3"
	inteiro img = g.carregar_imagem("/home/fermat/Área de Trabalho/Videos Portugol Studio/dj4.jpg")
	cadeia tituloMusica = ""
	inteiro inicioTitulo = 0
	inteiro fimTitulo = -1
	inteiro posicao = -1
	
	funcao inicio(){
		desenharTela()
		enquanto(verdadeiro){
			cor_FundoPadrao()
			horarioAtual(horarioH)
			interacaoBotaoPlay()
			tituloMusica = obterTituloMusica(caminhoSom)
			g.desenhar_texto(650,10,tituloMusica)
			interacaoBotaoStop()
			g.definir_cor(g.COR_PRETO)
			g.definir_tamanho_texto(14.0)
			g.desenhar_texto(50, 30,Cumprimento + " Seja Bem Vindo.")
			g.desenhar_texto(50, 50, "Agora são: " + horarioH + " horas e "+ horarioM + " minutos")
			g.renderizar()
		}	
	}
	funcao desenharTela(){
		g.iniciar_modo_grafico(verdadeiro)
		g.definir_titulo_janela("Player de Música")
		g.definir_dimensoes_janela(LarguraT, AlturaT)
		
	}
	funcao cor_FundoPadrao(){
		inteiro corFundo = g.criar_cor(180,80,160)
		g.definir_cor(corFundo)
		g.definir_opacidade(220)
		g.limpar()
		g.desenhar_imagem(0, 0, img)
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
		g.desenhar_texto(145, 330, "PLAY")	
		se(mouse(115, 315, 90, 35) == verdadeiro e m.botao_pressionado(m.BOTAO_ESQUERDO)){
			g.desenhar_retangulo(120, 320, 90, 35, verdadeiro, falso)
			g.definir_cor(g.COR_PRETO)
		     g.definir_tamanho_texto(20.0)
		     g.desenhar_texto(145, 200, "Play")
		     s.reproduzir_som(som, verdadeiro)
		}
		//se (m.botao_pressionado(m.BOTAO_ESQUERDO)){}
	}
	funcao interacaoBotaoStop(){
		g.definir_cor(g.criar_cor(100, 100, 100))
		g.desenhar_retangulo(400, 320, 90, 35, verdadeiro, verdadeiro)
		g.definir_cor(g.COR_PRETO)
		g.definir_tamanho_texto(16.0)
		g.desenhar_texto(425, 330, "STOP")	
		se(mouse(395, 315, 90, 35) == verdadeiro e m.botao_pressionado(m.BOTAO_ESQUERDO)){
			g.desenhar_retangulo(400, 320, 90, 35, verdadeiro, falso)
			g.definir_cor(g.COR_PRETO)
		     g.definir_tamanho_texto(20.0)
		     g.desenhar_texto(425, 200, "Stop")
			s.interromper_som(som)
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
	
	funcao cadeia obterTituloMusica(cadeia caminho){
		fimTitulo = tx.numero_caracteres(caminhoSom)
		faca{
			posicao = tx.posicao_texto("\\", caminho, posicao + 1)
			se(posicao == -1){
				faca{
					posicao = tx.posicao_texto("/", caminho, posicao + 1)
					se(posicao >=0){
						inicioTitulo = posicao
					}
				}enquanto(posicao >=0)
			}
			se(posicao >=0){
				inicioTitulo = posicao
			}
		}enquanto(posicao >=0)
		retorne tx.caixa_alta(tx.extrair_subtexto(caminhoSom, inicioTitulo + 1, fimTitulo - 4))
		}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1345; 
 * @DOBRAMENTO-CODIGO = [44, 51, 75, 90];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */