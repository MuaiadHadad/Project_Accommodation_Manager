# Project Accommodation Manager

Plataforma web construída em Laravel para agilizar a gestão de alojamentos universitários. O sistema
conecta **alunos**, **senhorios** e **gestores** permitindo divulgar imóveis, aprovar anúncios,
organizar favoritos e comunicar através de um chat integrado.

## Funcionalidades principais
- **Homepage pública:** listagem de quartos e casas com filtros de pesquisa.
- **Área do aluno:** gestão de perfil, favoritos e conversas com os proprietários.
- **Área do senhorio:** criação, edição e remoção de anúncios de quartos/casas, além de acesso ao chat.
- **Área do gestor:** validação e moderação de anúncios e contas de utilizadores.
- **Sistema de mensagens:** troca de mensagens em tempo real entre alunos e senhorios.
- **Recuperação e validação de contas:** fluxo completo para registo, login, validação por código e
  recuperação de palavra-passe.

## Estrutura do repositório
```
Project_Accommodation_Manager/
├── Diagramas/                # Diagramas de arquitetura e de domínio
├── Relatório/                # Documentação técnica e relatórios entregues
├── Requisitos/               # Levantamento de requisitos e especificações
├── Sprint/                   # Artefactos produzidos em cada sprint
├── protótipos/               # Protótipos de UX/UI
└── laravel/                  # Código-fonte da aplicação Laravel
    ├── app/
    │   ├── Console/
    │   ├── Http/             # Controladores para alunos, senhorios, gestores e chat
    │   ├── Models/
    │   ├── Product.php
    │   └── ProductsPhoto.php
    ├── bootstrap/
    ├── config/
    ├── database/
    ├── public/
    ├── resources/
    │   ├── css/
    │   ├── js/
    │   └── views/
    ├── routes/
    │   ├── api.php
    │   └── web.php
    ├── storage/
    ├── tests/
    ├── composer.json
    ├── package.json
    ├── phpunit.xml
    └── vite.config.js
```

## Configuração local (sem Docker)
1. Aceda à pasta `laravel`.
2. Copie o ficheiro de ambiente: `cp .env.example .env`.
3. Instale as dependências PHP e JavaScript:
   ```bash
   composer install
   npm install
   ```
4. Gere a chave da aplicação e execute as migrações:
   ```bash
   php artisan key:generate
   php artisan migrate --seed
   ```
5. Inicie os servidores de desenvolvimento:
   ```bash
   php artisan serve
   npm run dev
   ```
6. A aplicação ficará disponível em `http://127.0.0.1:8000`.

## Execução com Docker
Este repositório inclui um `Dockerfile` otimizado em múltiplas fases para construir o backend PHP
(Laravel) e os activos gerados pelo Vite.

1. Crie e configure o ficheiro `.env` em `laravel/.env` antes da build.
2. A partir da raiz do projeto, execute:
   ```bash
   docker build -t accommodation-manager .
   docker run --rm -it -p 8000:8000 --env-file laravel/.env accommodation-manager
   ```
3. Se precisar de persistir a pasta `storage` ou `database`, mapeie volumes na instrução `docker run`.
4. Após o arranque, a aplicação estará acessível em `http://localhost:8000`.

## Scripts úteis
Dentro da pasta `laravel`:
- `npm run dev` – inicia o Vite em modo desenvolvimento.
- `npm run build` – compila os activos front-end para produção.
- `php artisan test` – executa a suite de testes.
- `php artisan migrate --seed` – executa migrações e popula dados iniciais.

## Próximos passos sugeridos
- Adicionar pipelines CI/CD para lint, testes e build.
- Completar documentação das APIs e definir contratos de dados.
- Criar ficheiro `docker-compose.yml` para orquestrar serviços (ex.: base de dados MySQL).

---
Projeto desenvolvido para apoiar a gestão integrada de alojamentos estudantis.
