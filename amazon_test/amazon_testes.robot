*** Settings ***
Documentation    Essa suíte testa o site da Amazon.com.br
Resource         amazon_resources.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador

*** Test Cases ***
Caso de Teste 01 - Acesso ao menu "Eletrônicos"
    [Documentation]    Esse teste verifica o menu eletrônicos do site da Amazon.com.br
    ...                e verifica a categoria Computadores e Informática
    [Tags]             menus    categorias
    Acessar a home page do site Amazon.com.br
    Verificar se o título da página fica "Amazon.com.br | Tudo pra você, de A a Z."
    Entrar no menu "Eletrônicos"
    Verificar se aparece a frase "Eletrônicos e Tecnologia"
    Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"
    Verificar se aparece a categoria "Computadores e Informática"
    Verificar se aparece a categoria "Tablets"

Caso de Teste 02 - Pesquisa de um Produto
    [Documentation]    Esse teste verifica a busca de um produto
    [Tags]             lista_busca
    Acessar a home page do site Amazon.com.br
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa, se está listando o produto "Console Xbox Series S"

# Caso de Teste 03 - Adicionar Produto no Carrinho
#     [Documentation]    Esse teste verifica a adição de um produto no carrinho de compras
#     [Tags]             adicionar_carrinho
#     Acessar a home page do site Amazon.com.br
#     Digitar o nome de produto "Xbox Series S" no campo de pesquisa
#     Clicar no botão de pesquisa
#     Verificar o resultado da pesquisa se está listando o produto "Console Xbox Series S"
#     Adicionar o produto "Console Xbox Series S" no carrinho
#     Verificar se o produto "Console Xbox Series S" foi adicionado com sucesso
 
# Caso de Teste 04 - Remover Produto do Carrinho
#     [Documentation]    Esse teste verifica a remoção de um produto no carrinho de compras
#     [Tags]             remover_carrinho
#     Acessar a home page do site Amazon.com.br
#     Digitar o nome de produto "Xbox Series S" no campo de pesquisa
#     Clicar no botão de pesquisa
#     Verificar o resultado da pesquisa se está listando o produto "Console Xbox Series S"
#     Adicionar o produto "Console Xbox Series S" no carrinho
#     Verificar se o produto "Console Xbox Series S" foi adicionado com sucesso
#     Remover o produto "Console Xbox Series S" do carrinho
#     Verificar se o carrinho fica vazio

# robot --help
# cls: limpa terminal
# robot -i tag arquivo.robot: argumento qual tag quer executar
# robot -e tag arquivo.robot: argumento executar tudo menos aquela tag
# robot -d nome_de_uma_pasta arquivo.robot: organizar tudo para nome_de_uma_pasta
# robot -v  nome_da_variavel:novo_valor : mudar valor da variavel temporariamente
# cd caminho_do_seu_arquivo : mudar o caminho do seu arquivo do terminal