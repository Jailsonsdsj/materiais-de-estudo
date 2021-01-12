#### GIT - Comandos básicos para bom desempenho no terminal 💻



##### GUI x CLI

- CLI (Comand line interface): Softwares que operam por meio de linhas de código, tais como o terminal do Linux ou o CMD do windows.

- GUI (Graphic user interface): composta por todos os recursos gráficos utilizados pelo usuário para que o mesmo consiga exercer suas tarefas facilmente, sem a necessidade de conhecimento profundo de comandos

##### Registrando o usuário

Após a instalação do GIT, é necessário registrar o nome do usuário e e-mail pelos seguintes comandos:

$ git config --global user.name "Fulano de Tal"
$ git config --global user.email fulanodetal@exemplo.br

Para mais informações, [clique aqui](https://git-scm.com/book/pt-br/v2/Come%C3%A7ando-Configura%C3%A7%C3%A3o-Inicial-do-Git)



##### Primeiros comandos de navegação

| Função do comando                    | Windows                         | Linux                        |
| ------------------------------------ | ------------------------------- | ---------------------------- |
| Lista de diretórios                  | DIR                             | LS                           |
| Mudar o diretório                    | cd/[diretório]                  | cd/[diretório]               |
| Entrando no explore                  | cd/windows dir                  | cd etc ls                    |
| Retroceder um nível                  | cd ..                           | cd ..                        |
| Limpar a tela do terminal            | cls                             | clear ou ctrl + l            |
| Auto completar um comando            | Tecla tab                       |                              |
| Criando uma pasta                    | mkdir [nome da pasta]           | mkdir [nome da pasta]        |
| Criando um arquivo                   | tocuh .[nome do arquivo]        | tocuh .[nome do arquivo]     |
| Deletar arquivos dentro de uma pasta | del [nome da pasta]             |                              |
| Remover um repositório               | rmdir [nome do diretório] /s /q | rm -rf[nome do repositório]/ |



##### Entendendo como o GIT funciona

**SHA1** 

A sigla SHA significa Secure Hash Algorithm (Algoritimo de Hash Seguro). É um conjunto de funções hash criptográficas projetadas pela NSA (Agência de Segurança Nacional dos EUA). A encriptação gera um conjunto de caracteres de 40 dígitos É uma forma curta de representar um arquivo.



**Utilizando o SHA1 na prática**

1. Crie um arquivo .txt e salve com o nome “texto” na área de trabalho
2. Abra o GIT clicando com o dedo direito do mouse na área de trabalho e, em seguida, Git Bash Here
3. Digite o seguinte comando: penssl sha1 texto.txt
4. Note que foi atribuído um código para esse arquivo





1. Abra novamente o arquivo de texto e realize alguma alteração
2. Execute o comando openssl sha1 texto.txt novamente
3. Veja que foi gerado uma chave diferente. Essa chave corresponde à nova versão do arquivo
4. Agora remova as alterações realizadas e deixe o arquivo em seu formato inicial
5. Execute o comando novamente
6. A chave atribuída ao arquivo foi a mesma quando o comando foi executado pela primeira vez.



Em suma, o GIT consegue distinguir uma versão nova e a antiga. Esse tipo de função é o que torna o uso desta ferramenta tão fundamental.



##### Objetos internos do GIT



**BLOOBS**

Objeto que contém metadados capazes de armazenar os arquivos gerados pelo sha1A 

A estrutura básica do BLOOB é composta pelo tipo, tamanho, \0 e o conteúdo do arquivo.

**Gerando a chave:**

Passando para o blob:

