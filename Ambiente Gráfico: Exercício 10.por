programa
	{
	inclua biblioteca Util-->u
	inclua biblioteca Teclado-->t
	inclua biblioteca Graficos-->g
	funcao inicio()
	{
	inteiro mat[10][15],x=0,y=0, cp = g.COR_PRETO,cb = g.COR_BRANCO
	para (inteiro l=0;l<10;l++){
		para (inteiro c=0;c<15;c++){
			mat[l][c]=u.sorteia(0, 1)
		}
	}
	para (inteiro l=0;l<10;l++){
		para (inteiro c=0;c<15;c++){
			escreva("[",mat[l][c],"]")
			}
			escreva("\n")
		}
	g.iniciar_modo_grafico(verdadeiro)
	g.definir_dimensoes_janela(750,500)
	g.definir_titulo_janela("QRCode")
	g.definir_cor(cb)
	g.limpar()
		
	inteiro img = g.carregar_imagem("/home/fermat/Área de Trabalho/Videos Portugol Studio/50p.jpg")
	
	para (inteiro l=0;l<10;l++){
		para (inteiro c=0;c<15;c++){
			se (mat[l][c]==1){
				y=l*50
				x=c*50
				g.desenhar_imagem(x, y, img)
				
			}
		}
	}
	g.renderizar()
	t.ler_tecla()
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 187; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {x, 8, 21, 1}-{y, 8, 25, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */