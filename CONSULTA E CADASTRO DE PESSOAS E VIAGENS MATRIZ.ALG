Algoritmo "Consulta e cadastro de pessoas e viagens matriz"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 11/07/2022
Var
// Seção de Declarações das variáveis
cadastro : vetor[1..4,1..4] de caractere
x,y,z: inteiro
cel :caracter
//X = Linha
//Y = Coluna
//Cel = celula
//Z = Contador

Inicio
//Matriz base
cadastro[1,1] <- "01"
cadastro[1,2] <- "Zico"
cadastro[1,3] <- "Nunes"
cadastro[1,4] <- "1"

cadastro[2,1] <- "02"
cadastro[2,2] <- "Rau"
cadastro[2,3] <- "Andrade"
cadastro[2,4] <- "4"
z <- 0
//Escolha da operação
escreval("Cadastro:1 Consulta:2 visualizar toda a tabela:3 novo cadastro:4")
escreva("Escolha: ")
leia(x)
escolha(x)

//Novo cadastro geral de pessoas.
Caso 1
escreva("Quantos serão cadastrados?")
   leia(x)

   para x de 1 ate x faca
      para y de 1 ate 4 faca
         Escolha y
         caso 1
         escreva("Digite o código da viagem:")
         leia(cadastro[x,y])

         caso 2
            escreva("Digite a origem:")
            leia(cadastro[x,y])
         caso 3
            escreva("Digite o destino:")
            leia(cadastro[x,y])
         caso 4
            escreva("Quantos vão viajar?:")
            leia(cadastro[x,y])
            escreval
         fimescolha
      fimpara
   fimpara
Caso 1
escreva("Quantos serão cadastrados?")
   leia(x)

   para x de 1 ate x faca
      para y de 1 ate 4 faca
         Escolha y
         caso 1
            escreva("Digite seu nome completo:")
            leia(cadastro[x,y])
         caso 2
            escreva("Digite sua data de nascimento:")
            leia(cadastro[x,y])
         caso 3
            escreva("Digite seu CPF:")
            leia(cadastro[x,y])
         caso 4
            escreva("Digite seu nome e-mail:")
            leia(cadastro[x,y])
            escreval
         fimescolha
      fimpara
   fimpara
Caso 2
//Consulta de cadastro
escreva("Digite uma palavra: ")
leia(cel)

para x de 1 ate 4 faca
para y de 1 ate 4 faca
 se cel = cadastro[x,y] entao
 escreva("Nome: ",cadastro[x,1],"| Origem: ",cadastro[x,2],"| Destino: ",cadastro[x,3],"| Passageiros ",cadastro[x,4])
 escreval()
 z <- z+1
 fimse
fimpara
fimpara
se z = 0 entao
escreva("Não existe cadastro na matriz.")
fimse

//Apresentação de toda a matriz
caso 3
     escreval("  Nome   |  Origem  |  Destino | Passageiros")
para x de 1 ate 4 faca
para y de 1 ate 4 faca
     escreva("  ",cadastro[x,y],"   ")
fimpara
escreval
fimpara

//Novo cadastro único
caso 4
escreval("Cadastre uma nova pessoa: ")
para x de 1 ate 4 faca
se cadastro[x,1] <> "" entao
z<-z+1
fimse
fimpara
para y de 1 ate 4 faca
leia(cadastro[z+1,y])
fimpara
caso 5
//Cadastro de usuário
escreva("Preencha seus dados?")
   leia(x)

   para x de 1 ate x faca
      para y de 1 ate 4 faca
         Escolha y
         caso 1
            escreva("Nome completo:")
            leia(cadastro[x,y])
         caso 2
            escreva("Data de nascimento:")
            leia(cadastro[x,y])
         caso 3
            escreva("CPF:")
            leia(cadastro[x,y])
         caso 4
            escreva("E-mail:")
            leia(cadastro[x,y])
            escreval
         fimescolha
      fimpara
   fimpara

fimescolha
// Seção de Comandos, procedimento, funções, operadores, etc... 


Fimalgoritmo