

# GitHub - Principais comandos ![image-20210112075845586](C:\Users\PC\AppData\Roaming\Typora\typora-user-images\image-20210112075845586.png)

### **Estados**

- Modificado (modified)

- Preparado (staged/index)

- Consolidado (comitted)



### **Geral**

~~~~
git help
~~~~



### **Iniciar um repositório (master) em uma determinada pasta** 

~~~
gitinit
~~~



### **Criar um arquivo**

~~~~
touch README.md
~~~~



### **Criar uma pasta** 

~~~~
mkdir pasta
~~~~



### **Listar os conteúdos dentro do repositório**

~~~~
ls
~~~~



### **Mover um arquivo para dentro da pasta**

~~~~
mv - arquivo ./pasta
~~~~

> Observação imporante:o Git não monitora pastas e sim arquivos, por isso só serão criadas/sincronizadas pastas que contenham algum arquivo.



### **Informar em qual estado um arquivo se encontra**

~~~~
gitstatus
~~~~



### **Enviar o arquivo para staged**

~~~~
git add arquivo pasta
~~~~



### **Enviar todos os arquivos do repositório para staged**

~~~~
git add *
~~~~

~~~~
git add .
~~~~



### **Comitar um arquivo com um comentário**

~~~~
git commit -m "comentário"
~~~~

Observação: ao commitar um arquivo, não será possível alterar seu autor



### **Comitar vários arquivos**

~~~~
git commit arquivo1.txt arquivo2.txt "comentário"
~~~~



### **Remover arquivo do diretório**

~~~~
git rm arquivo.txt
~~~~



### **Remover diretório**

~~~~
git rm -r diretório
~~~~



### **Exibir histório de logs**

~~~~
git log
~~~~



### **Exibir histórico detalhado**

~~~~
git log --stat
~~~~



### **Verificar as configurações do GIT**

~~~~
--git config
~~~~



### **Restaurando o e-mail do github**

~~~~
git config --global --unset user.email
~~~~

~~~~
git config --global --unset user.nickname
~~~~

Dica: alinhe as credencias com o github sempre que usar o git



### **Configurado os dados pessoais do GitHub**

~~~~
git config --global user.email "email"
~~~~

~~~~
git config --global user.nickname "jailsonsdsj"
~~~~

### 

### **Apontando um repositório do Github para o GIT**

Ao criar um repositório no GitHub, basta copiar o link e inserir no terminal do git juntamente com o seguinte código:

~~~~
git remote add origin <link>
~~~~



### **Alterar a url de um repositório remoto**

~~~~
git remote set-url origin <link>
~~~~



### **Listando os repositórios integrados**

~~~~
git remote -v
~~~~



### **Exibindo informações sobre os repositórios**

~~~~
git remote show origin
~~~~



### **Renomear um repositório remoto**

~~~~
git remote rename orogin novo_nome
~~~~



### **Desvincular um repositório remoto**

~~~~
git remote rm nome_repositório
~~~~



### **Empurrando o repositório local para o remoto**

~~~~
git push origin master
~~~~



### **Puxando o repositório remoto para o local**

~~~~
git pull origin master
~~~~

Dica: realizar esse comando antes de qualquer modificação no código.



### **Apontar para um editor específico**

~~~~
git config --global core.editor vim
~~~~



### **Ignorar arquivos**

Os nomes de arquivos/diretórios ou extensões de arquivos listados no arquivo .gitignore não serão adicionados em um repositório.

~~~~
git config --global core.excludesfile ~/.gitignore
~~~~



Existem dois arquivos .gitignore, são eles:

- Geral: Normalmente armazenado no diretório do usuário do Sistema Operacional. O arquivo que possui a lista dos arquivos/diretórios a serem ignorados por todos os repositórios deverá ser declarado conforme citado acima. O arquivo não precisa ter o nome de .gitignore.

- Por repositório: Deve ser armazenado no diretório do repositório e deve conter a lista dos arquivos/diretórios que devem ser ignorados apenas para o repositório específico.



### **Adicionar um arquivo que esta listado no .gitignore (geral ou do repositório)**

~~~~
git add -f arquivo_no_gitignore.txt
~~~~



### **Clonar um repositório**

~~~~
git clone <link>
~~~~





# Lidando com erros



### **Failed to push some refs to...**

O erro aconteceu ao tentar enviar o repositório local para o remoto. Para resolver, basta listar os repositórios integrados através do seguinte comando:

~~~~
git show-ref
~~~~

 Em seguida, basta utilizar o código:

~~~~
git push master main
~~~~



### GitHub Error Message - Permission denied (publickey)

~~~~
> git push -u origin master
Permission denied (publickey).
fatal: Could not read from remote repository.

Please make sure you have the correct access rights
and the repository exists.
~~~~

GitHub isn't able to authenticate you. So, either you aren't setup with an SSH key, because you haven't [set one up on your machine](https://help.github.com/articles/generating-ssh-keys), or your key isn't associated with your GitHub account.

You can also use the HTTPS URL instead of the SSH/git URL to avoid having to deal with SSH keys. This is [GitHub's recommended method](https://help.github.com/articles/set-up-git).

Further, GitHub has a [help page specifically for that error message](https://help.github.com/articles/error-permission-denied-publickey), and explains in more detail everything you could check.



References: [StackOverflow](https://stackoverflow.com/questions/12940626/github-error-message-permission-denied-publickey)



### Gerenciar repositórios remotos

Alternar URLs remotes de SSH para HTTPS

~~~~
$ git remote set-url origin https://github.com/USERNAME/REPOSITORY.git
~~~~



### Another repository inside your current repository

ref: https://gist.github.com/claraj/e5563befe6c2fb108ad0efb6de47f265

