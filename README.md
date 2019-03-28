# Como subir o contêiner do sol_api

Após seguir o tutorial de como subir o contêiner do PostgreSQL:

1. Entre no **pgadmin**, clique com o botão direito em **Login/Group Roles**, e em seguida clique **em Create → Login/Group Role** como indicado na imagem abaixo:

![](imagens/prints para tutorial - contêiner sol_api/print1.png)

- O campo **Name** na aba **General** precisa ser o mesmo que está no campo **DATABASE_USER** no arquivo **api.env** (default: sol_api);

- O campo **Password** na aba **Definition** precisa ser o mesmo do campo **DATABASE_PASSWORD** no arquivo **api.env**;

2. Na aba **Privileges**, deixar como na imagem abaixo:

![](imagens/prints para tutorial - contêiner sol_api/print2.png)
      

- Em seguida, clique em **Save**;

3. Clique com o botão direito em **Databases**, **Create > Database** para cadastrar um banco de dados:

![](imagens/prints para tutorial - contêiner sol_api/print3.png)


- Na aba **General**, o campo **Database** precisa ser o mesmo nome que consta no campo **DATABASE_NAME** do arquivo api.env;

- No campo **Owner**, atribuir o usuário criado anteriormente no passo **Create Login/Group**;

4. Em seguida, clone o repositório **sol_api**:
```
git clone https://github.com/martucci-melillo/sol_api.git
```
5. Clone o repositório **sol_api_env_files**:
```
git clone https://github.com/martucci-melillo/sol_api_env_files.git
```
6. Acesse a pasta **sol_api_env_files**, copie o arquivo **api.env** e cole na pasta **sol_api**. A pasta deve ficar assim:

![](imagens/prints para tutorial - contêiner sol_api/print4.png)


7. Abra o arquivo **api.env** e altere o IP do campo **DATABASE_HOST** para o IP de sua máquina;

8. No terminal do Linux, acesse a pasta **sol_api** e execute o seguinte comando:
```
docker-compose up
```
Feito isso, o contêiner **sol_api** estará funcionando normalmente.