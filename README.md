# Project Accommodation Manager

Aplicação web desenvolvida em **Laravel** para apoiar a gestão de alojamentos universitários. O
sistema conecta alunos, senhorios e gestores, cobrindo o ciclo completo de divulgação,
validação e reserva de quartos.

## Principais funcionalidades
- **Catálogo público de imóveis** com filtros e detalhes de cada quarto/casa.
- **Área do estudante** para gerir perfil, favoritos e conversas com proprietários.
- **Área do senhorio** para criar, editar e despublicar anúncios.
- **Área do gestor** responsável por moderar utilizadores e validar publicações.
- **Mensagens em tempo real** entre estudantes e senhorios.
- **Fluxo de autenticação completo**, incluindo registo, validação por código e recuperação de
  credenciais.

## Tecnologias
- [Laravel](https://laravel.com/) 10 com PHP 8.2
- MySQL ou MariaDB para persistência
- [Vite](https://vitejs.dev/) para gestão e build dos assets front-end
- [Bootstrap](https://getbootstrap.com/) e componentes Blade para UI

## Estrutura do repositório
```text
Project_Accommodation_Manager/
├── Diagramas/             # Diagramas UML e de arquitetura
├── Requisitos/            # Especificação funcional do produto
├── Relatório/             # Relatórios e documentação de entregas
├── Sprint/                # Artefactos planeados em cada sprint
├── protótipos/            # Protótipos de UX/UI
└── laravel/               # Código-fonte da aplicação Laravel
    ├── app/
    │   ├── Console/       # Comandos Artisan personalizados
    │   ├── Events/        # Eventos de domínio da aplicação
    │   ├── Http/          # Controladores, middleware e requests
    │   ├── Listeners/     # Listeners ligados aos eventos
    │   ├── Mail/          # Classes de e-mail (por ex. validação de conta)
    │   ├── Models/        # Modelos Eloquent
    │   ├── Product.php    # Modelo específico para imóveis
    │   └── ProductsPhoto.php
    ├── bootstrap/
    ├── config/
    ├── database/          # Migrations, seeders e factories
    ├── public/            # Ponto de entrada HTTP e assets compilados
    ├── resources/
    │   ├── css/
    │   ├── js/
    │   └── views/
    ├── routes/
    │   ├── api.php        # Endpoints expostos para consumo externo
    │   └── web.php        # Rotas para navegação web
    ├── storage/
    ├── tests/
    ├── composer.json
    ├── package.json
    └── vite.config.js
```

## Configuração local (sem Docker)
1. **Pré-requisitos**
   - PHP >= 8.2 com extensões `pdo_mysql`, `mbstring`, `openssl`, `xml`, `zip`.
   - Composer 2 e Node.js >= 18.
   - Instância MySQL/MariaDB acessível.
2. **Clonar o repositório e aceder à pasta Laravel**
   ```bash
   git clone https://github.com/<organização>/Project_Accommodation_Manager.git
   cd Project_Accommodation_Manager/laravel
   ```
3. **Configurar variáveis de ambiente**
   ```bash
   cp .env.example .env
   php artisan key:generate
   ```
   Actualize as variáveis `DB_*`, `MAIL_*` e outras credenciais.
4. **Instalar dependências**
   ```bash
   composer install
   npm install
   ```
5. **Executar migrações e seeders**
   ```bash
   php artisan migrate --seed
   php artisan storage:link
   ```
6. **Iniciar servidores de desenvolvimento**
   ```bash
   php artisan serve
   npm run dev
   ```
   A aplicação estará disponível em `http://127.0.0.1:8000`.

## Execução com Docker
O repositório inclui um `Dockerfile` multi-stage que instala dependências PHP, compila os assets com
Vite e publica a aplicação num container Apache + PHP 8.2.

1. Crie o ficheiro de configuração antes da build:
   ```bash
   cp laravel/.env.example laravel/.env
   ```
2. Actualize as variáveis `APP_KEY`, `DB_*` e `MAIL_*` no `laravel/.env`.
3. Construa a imagem e inicie o container (publica na porta 8080):
   ```bash
   docker build -t accommodation-manager .
   docker run --rm -it \
     -p 8080:80 \
     --env-file laravel/.env \
     -v $(pwd)/laravel/storage:/var/www/html/storage \
     accommodation-manager
   ```
4. Após o arranque, execute migrações dentro do container sempre que necessário:
   ```bash
   docker exec -it <container_id> php artisan migrate --seed --force
   ```
5. A aplicação ficará disponível em `http://localhost:8080`.

## Scripts úteis (pasta `laravel/`)
- `npm run dev` – inicia o Vite em modo desenvolvimento.
- `npm run build` – compila os assets front-end para produção.
- `php artisan test` – executa a suite de testes automatizados.
- `php artisan migrate --seed` – aplica migrações e dados iniciais.

## Próximos passos sugeridos
- Adicionar `docker-compose.yml` para orquestrar base de dados e aplicação.
- Configurar pipeline CI/CD para lint, testes e build.
- Especificar contratos de API (ex.: OpenAPI/Swagger) para integração com parceiros.

---
Projeto desenvolvido para apoiar a gestão integrada de alojamentos estudantis.
