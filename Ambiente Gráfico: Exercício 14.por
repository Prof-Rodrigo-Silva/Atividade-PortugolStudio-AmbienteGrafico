programa
{
	inclua biblioteca Texto --> tx
	inclua biblioteca Graficos --> g
	inclua biblioteca Teclado --> t

	//	Dimensões da tela
	const inteiro RESOLUCAO_800x608 = 0
	const inteiro RESOLUCAO_1025x779 = 1
	inteiro largura=800, altura=608, largura_tela=800, altura_tela=608
	const inteiro LarguraT = 626
	const inteiro AlturaT = 443
	const cadeia login1 = "rodrigo"
	const cadeia senha1 = "admin"
	cadeia login = ""
	cadeia senha = ""
	inteiro  fundo=-1
	inteiro TAMANHO_TILE=0
	cadeia fonte = "ZipSonikItalic", fontetex = "Papyrus"
		
	funcao inicio()
	{
		g.iniciar_modo_grafico(verdadeiro)
		g.definir_titulo_janela("Tela de Login")
		g.definir_cor(16)
		define_resolucao(RESOLUCAO_800x608)
		//cor_FundoPadrao()
		g.definir_fonte_texto(fonte)
		identificacao()
		
	}
	
	funcao define_resolucao(inteiro resolucao)
	{
		se(resolucao == RESOLUCAO_1025x779)
		{
			largura=1025
			altura=779
		}senao{
			largura = 800
			altura = 608
		}
		carregar_imagens(largura)
		
		largura_tela = largura
		altura_tela = altura
		se(largura==800)
		{
			TAMANHO_TILE= 32
		}
		senao
		{
			TAMANHO_TILE= 41
		}
	}
	
	funcao carregar_imagens(inteiro largura_tela)
	{
		cadeia pasta_recurso = "recurso"+largura_tela
		cadeia caminho_imagens="/home/fermat/Área de Trabalho/Videos Portugol Studio/"+pasta_recurso+"/"
		
		carregar_imagem(fundo, caminho_imagens+"fundo.jpg")
		
	}
	
	funcao carregar_imagem(inteiro &img, cadeia caminho)
	{
		liberar_imagem(img)
	  	img = g.carregar_imagem(caminho)
	}
	funcao liberar_imagem(inteiro &img)
	{
		se (img >= 0)
		{
 			g.liberar_imagem(img)
			img = -1
		}
	}
	funcao liberar_imagens()
	{
		liberar_imagem(fundo)
	}
	
	funcao carregar_fontes()
	{
		g.carregar_fonte("/home/fermat/Área de Trabalho/Videos Portugol Studio/fonte.ttf")
	}
	
	funcao identificacao()
	{
	inteiro temp=0
		desenhar_identificacao()
		faca
		{
			temp = t.ler_tecla()
			se ((temp >= t.TECLA_A e temp <= t.TECLA_Z) ou temp == t.TECLA_ESPACO ou temp == t.TECLA_BACKSPACE)
				{
					se (temp == t.TECLA_BACKSPACE)
					{
						inteiro tamanho = tx.numero_caracteres(login)
						se (tamanho >= 1)
						{			
							login = tx.extrair_subtexto(login, 0, tamanho - 1)
						}
					}
					senao
					{
						se(tx.numero_caracteres(login) < 13)
						{
							login=login+t.caracter_tecla(temp)
						}
					}			
				}
			
			desenhar_identificacao()
		}
		enquanto(temp!=t.TECLA_ENTER)
			
		//continuar = tx.substituir(continuar, "%s", login)
	}
	
	funcao desenhar_identificacao()
	{
		g.desenhar_imagem(0, 0, fundo)
		g.definir_opacidade(200)
		g.definir_cor(g.COR_PRETO)
		g.desenhar_retangulo(7*TAMANHO_TILE, 7*TAMANHO_TILE, 12*TAMANHO_TILE, 4*TAMANHO_TILE, falso, verdadeiro)
		g.definir_opacidade(255)
		g.definir_cor(g.COR_BRANCO)
		g.definir_tamanho_texto(TAMANHO_TILE)
		g.desenhar_texto(8.5*TAMANHO_TILE, 8*TAMANHO_TILE, "Informe Seu Login:")
		g.desenhar_texto(8.5*TAMANHO_TILE, 9*TAMANHO_TILE, login)
		g.definir_opacidade(150)
		g.desenhar_texto(8.5*TAMANHO_TILE+g.largura_texto(login), 9.5*TAMANHO_TILE, "_")
		g.definir_opacidade(255)
		g.renderizar()
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3078; 
 * @DOBRAMENTO-CODIGO = [20];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */