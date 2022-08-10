Algoritmo "Atletas"


Var
   maisAlto, nome, sexo : caractere
   N, i : inteiro
   peso, altura, somaPeso, pesoMedio, pctgm: real
   maiorAlt, altFem, altF, qteF, qteM : real

Inicio

     escreva("Digite a quantidade de atletas: ")
     leia(N)

   qteM <- 0
   qteF <- 0
   altF <- 0
   pesoMedio <- 0

   altFem <- 0
   maiorAlt <- 0
   para i de 1 ate N faca

    escreval("Digite os dados do atleta numero", i)
    escreva("Nome: ")
    leia(nome)

    escreva("Sexo: ")
    leia(sexo)
      enquanto (sexo <> "F") e (sexo <> "M") faca
         escreval("Valor invalido! Favor, digitar F ou M:")
         leia(sexo)
      fimenquanto
              
    escreva("Altura: ")
    leia(altura)
       enquanto altura <= 0 faca
          escreval("Valor invalido! Favor, digitar um valor positivo")
          leia(altura)
       fimenquanto

       se maiorAlt < altura entao
          maiorAlt <- altura
          maisAlto <- nome
    fimse
    
       se sexo = "M" entao
         qteM <- qteM + 1
     fimse
     
     se sexo = "F" entao
         qteF <- qteF + 1
         altF <- altF + altura
     fimse

    escreva("Peso: ")
    leia(peso)
      enquanto peso <= 0 faca
         escreval("Valor invalido! Favor, digitar um valor positivo: ")
         leia(peso)
      fimenquanto
      somaPeso <- somaPeso + peso

   fimpara
   
   pesoMedio <- somaPeso / N
   
   pctgm <- qteM / N * 100
   
   se altF <> 0 entao
      altFem <- altF / qteF
   fimse
   
   escreval
   escreval("RELATORIO:")
   escreval("Peso medio dos atletas: ", pesoMedio:3:2)
   escreval("Atleta mais alto: ", maisAlto)
   escreval("Porcentagem de homens: ", pctgm:3:1, "%")

   se (sexo = "F") ou (sexo = "f") entao
      escreval("Media altura mulher: ", altFem:2:2)
   senao
      escreval("Não há mulheres cadastradas")
   fimse

Fimalgoritmo