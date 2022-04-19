Funcionalidade: Gerar arquivo .CSV
    Como um professor
    Eu quero poder gerar um arquivo .csv
    Para que eu possa utilizar esses dados em outra plataforma

<<<<<<< HEAD
Contexto:
    Dado que eu esteja logado como professor
    E eu esteja na parte de filtragem de questões

#Caminho Feliz
Cenário: O gráfico  é gerado com sucesso
    Dado que eu esteja na página de filtragem de questões
    E que os dados requisitados foram encontrados
=======
#HAPPY PATH
Cenário: O gráfico é gerado com sucesso
    Dado que os dados requisitados foram encontrados
>>>>>>> main
    E os dados estão formatados corretamente
    Quando o professor escolhe uma turma específica
    Então a aplicação passa esses dados para o próximo passo
    E os dados são compilados em um arquivo .csv
    E o arquivo .csv é baixado do navegador.

<<<<<<< HEAD
#Caminho triste
Cenário: A turma não existe
    Dado que eu esteja na página de filtragem de questões
    E que não existem dados sobre a turma em questão
=======
#SAD PATH
Cenário: A turma não existe

    Dado que não existem dados sobre a turma em questão
>>>>>>> main
    Quando o professor escolhe a turma
    E os dados não são encontrados
    Então uma mensagem de erro é impressa na tela
    E nenhum arquivo é gerado
    E nenhum arquivo é baixado.

<<<<<<< HEAD
#Caminho triste
Cenário: Os dados estão corrompidos ou mal formatados
    Dado que eu esteja na página de filtragem de questões
    E que os dados estão fora do formato padrão
    Quando o professor escolhe a turma 
=======
#SAD PATH
Cenário: Os dados estão corrompidos ou mal formatados
    Dado que os dados estão fora do formato padrão
    Quando o professor escolhe a turma
>>>>>>> main
    E os dados não encaixam no padrão
    E a função que gera o arquivo .csv não consegue interpretar os dados
    Então uma mensagem de erro é impressa na tela
    E nenhum arquivo é gerado
    E nenhum arquivo é baixado.
