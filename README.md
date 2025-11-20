# Project Accommodation Manager (Gestor de Alojamentos)

A comprehensive accommodation management system built with Laravel, designed for managing student accommodations and rental properties.

## 📋 Table of Contents

- [About the Project](#about-the-project)
- [Features](#features)
- [File Structure](#file-structure)
- [Technology Stack](#technology-stack)
- [Installation](#installation)
- [Usage](#usage)
- [API Routes](#api-routes)
- [Contributing](#contributing)
- [License](#license)

## 🏠 About the Project

This project is an accommodation management system specifically designed for educational institutions to manage student housing. It provides interfaces for different user types: students (alunos), landlords (senhorios), and administrators (gestores).

## ✨ Features

- **Multi-user System**: Support for students, landlords, and administrators
- **Property Management**: Add, edit, and manage accommodation listings
- **Room Management**: Individual room management with detailed specifications
- **Chat System**: Real-time communication between users
- **File Upload**: Image upload for property listings
- **Google Maps Integration**: Location-based services for properties
- **User Authentication**: Secure login and registration system
- **Profile Management**: User profile customization and management

## 📁 File Structure

```
Project_Accommodation_Manager/
├── 📂 .git/                           # Git version control
├── 📂 .idea/                          # IDE configuration files
├── 📂 Diagramas/                      # Project diagrams and documentation
├── 📂 Relatório/                      # Project reports
├── 📂 Requisitos/                     # Requirements documentation
├── 📂 Sprint/                         # Sprint documentation and prototypes
│   ├── 📂 Sprint 1/
│   │   ├── 📂 Diagramas/
│   │   └── 📂 protótipos/
│   ├── 📂 Sprint 2/
│   └── 📂 Sprint 3/
├── 📂 protótipos/                     # UI prototypes
├── 📂 laravel/                        # Main Laravel application
│   ├── 📂 app/                        # Application logic
│   │   ├── 📂 Console/                # Artisan commands
│   │   ├── 📂 Events/                 # Event classes
│   │   ├── 📂 Exceptions/             # Exception handling
│   │   ├── 📂 Http/                   # HTTP layer (Controllers, Middleware, Requests)
│   │   │   ├── 📂 Controllers/        # Application controllers
│   │   │   └── 📂 Middleware/         # HTTP middleware
│   │   ├── 📂 Listeners/              # Event listeners
│   │   ├── 📂 Mail/                   # Mail classes
│   │   ├── 📂 Models/                 # Eloquent models
│   │   └── 📂 Providers/              # Service providers
│   ├── 📂 bootstrap/                  # Application bootstrap files
│   │   └── 📂 cache/                  # Framework bootstrap cache
│   ├── 📂 config/                     # Configuration files
│   ├── 📂 database/                   # Database related files
│   │   ├── 📂 factories/              # Model factories
│   │   ├── 📂 migrations/             # Database migrations
│   │   └── 📂 seeders/                # Database seeders
│   ├── 📂 public/                     # Web accessible files
│   │   ├── 📂 Js_Register/            # Registration JavaScript
│   │   │   └── 📄 Js.js               # Form validation logic
│   │   ├── 📂 Style_Page_1/           # General styling and scripts
│   │   │   ├── 📄 bootstrap.min.css   # Bootstrap framework
│   │   │   ├── 📄 bootstrap.min.js    # Bootstrap JavaScript
│   │   │   ├── 📄 element.css         # Custom element styles
│   │   │   ├── 📄 font-awesome.min.css # Font Awesome icons
│   │   │   ├── 📄 global.css          # Global styles
│   │   │   └── 📄 jquery-2.1.1.min.js # jQuery library
│   │   ├── 📂 Style_Page_Gestor/      # Administrator interface styles
│   │   │   ├── 📄 Gestor.js           # Admin panel functionality
│   │   │   └── 📄 profile.js          # Profile management
│   │   ├── 📂 Style_page_senhorio/    # Landlord interface styles
│   │   │   ├── 📄 Adicionar.js        # Add property functionality (FIXED BUGS)
│   │   │   ├── 📄 Chat_JS.js          # Chat system JavaScript
│   │   │   └── 📄 Page_inicial.js     # Main page functionality
│   │   ├── 📂 style_Login/            # Login page styles
│   │   │   └── 📄 styles.css          # Login form styling
│   │   ├── 📄 .htaccess               # Apache configuration
│   │   ├── 📄 favicon.ico             # Website favicon
│   │   ├── 📄 index.php               # Application entry point
│   │   ├── 📄 robots.txt              # Search engine directives
│   │   └── 📄 web.config              # IIS configuration
│   ├── 📂 resources/                  # Raw assets
│   │   ├── 📂 css/                    # CSS source files
│   │   │   └── 📄 app.css             # Main application styles
│   │   ├── 📂 js/                     # JavaScript source files
│   │   │   ├── 📄 app.js              # Main application JavaScript
│   │   │   └── 📄 bootstrap.js        # Bootstrap configuration
│   │   └── 📂 views/                  # Blade templates
│   │       ├── 📂 Page_Senhorio/      # Landlord interface views
│   │       │   ├── 📄 Adicionar_alojamento.blade.php  # Add accommodation form
│   │       │   ├── 📄 EditCasa.blade.php              # Edit house form
│   │       │   ├── 📄 EditQuarto.blade.php            # Edit room form
│   │       │   ├── 📄 Profile_Senhorio.blade.php      # Landlord profile
│   │       │   ├── 📄 Senhorio_Principal_page.blade.php # Main landlord page
│   │       │   └── 📄 conversation.blade.php          # Chat interface
│   │       ├── 📂 Page_Gestor/        # Administrator interface views
│   │       │   ├── 📄 Adicionar_Gestor.blade.php      # Add admin form
│   │       │   ├── 📄 EmailRegistarGestor.blade.php   # Admin registration email
│   │       │   ├── 📄 Gestor.blade.php                # Main admin panel
│   │       │   ├── 📄 Profile.blade.php               # Admin profile
│   │       │   ├── 📄 detalhe_Casa_Gestor.blade.php   # House details (admin view)
│   │       │   └── 📄 detalhe_quarto_Gestor.blade.php # Room details (admin view)
│   │       ├── 📂 Page_aluno/         # Student interface views
│   │       │   ├── 📄 Aluno_Principal_page.blade.php  # Main student page
│   │       │   ├── 📄 Profile_Aluno.blade.php         # Student profile
│   │       │   └── 📄 conversation.blade.php          # Student chat interface
│   │       ├── 📂 User/               # User management views
│   │       │   ├── 📄 Email.blade.php                 # Email templates
│   │       │   ├── 📄 EmailForgotPassword.blade.php   # Password reset email
│   │       │   ├── 📄 ForgetPassword.blade.php        # Password reset form
│   │       │   ├── 📄 Login.blade.php                 # Login form
│   │       │   ├── 📄 Register.blade.php              # Registration form
│   │       │   └── 📄 validation.blade.php            # Account validation
│   │       └── 📂 inicio/             # Public pages
│   │           ├── 📄 detalhe_Casa.blade.php          # Public house details
│   │           ├── 📄 detalhe_quarto.blade.php        # Public room details
│   │           └── 📄 index.blade.php                 # Homepage
│   ├── 📂 routes/                     # Route definitions
│   │   └── 📄 web.php                 # Web routes
│   ├── 📂 storage/                    # Storage files
│   │   ├── 📂 app/                    # Application storage
│   │   ├── 📂 framework/              # Framework storage
│   │   └── 📂 logs/                   # Log files
│   ├── 📂 tests/                      # Test files
│   │   ├── 📂 Feature/                # Feature tests
│   │   │   └── 📄 ExampleTest.php     # Example feature test
│   │   └── 📂 Unit/                   # Unit tests
│   ├── 📄 .editorconfig              # Editor configuration
│   ├── 📄 .env.example               # Environment variables template
│   ├── 📄 .gitattributes             # Git attributes
│   ├── 📄 .gitignore                 # Git ignore rules
│   ├── 📄 README.md                  # Laravel documentation
│   ├── 📄 artisan                    # Laravel CLI tool
│   ├── 📄 composer.json              # PHP dependencies
│   ├── 📄 composer.lock              # PHP dependency lock file
│   ├── 📄 package.json               # Node.js dependencies
│   ├── 📄 phpunit.xml                # PHPUnit configuration
│   ├── 📄 vercel.json                # Vercel deployment config
│   └── 📄 vite.config.js             # Vite build configuration
├── 📄 .gitignore                     # Global Git ignore rules
└── 📄 README.md                      # This file
```

## 🛠 Technology Stack

### Backend
- **Laravel 10.x** - PHP framework
- **PHP 8.1+** - Server-side language
- **MySQL/MariaDB** - Database
- **Pusher** - Real-time communication

### Frontend
- **Blade Templates** - Laravel's templating engine
- **Bootstrap** - CSS framework
- **jQuery** - JavaScript library
- **Font Awesome** - Icon library
- **Google Maps API** - Location services

### Development Tools
- **Composer** - PHP dependency manager
- **Vite** - Frontend build tool
- **PHPUnit** - Testing framework

## 🚀 Installation

### Prerequisites
- PHP 8.1 or higher
- Composer
- Node.js and npm
- MySQL/MariaDB
- Web server (Apache/Nginx)

### Setup Steps

1. **Clone the repository**
   ```bash
   git clone https://github.com/MuaiadHadad/Project_Accommodation_Manager.git
   cd Project_Accommodation_Manager/laravel
   ```

2. **Install PHP dependencies**
   ```bash
   composer install
   ```

3. **Install Node.js dependencies**
   ```bash
   npm install
   ```

4. **Environment configuration**
   ```bash
   cp .env.example .env
   php artisan key:generate
   ```

5. **Configure database**
   - Update `.env` file with your database credentials
   - Create a new database for the project

6. **Run migrations**
   ```bash
   php artisan migrate
   ```

7. **Seed the database (optional)**
   ```bash
   php artisan db:seed
   ```

8. **Build frontend assets**
   ```bash
   npm run build
   ```

9. **Start the development server**
   ```bash
   php artisan serve
   ```

## 🎯 Usage

### User Types

1. **Students (Alunos)**
   - Browse available accommodations
   - Contact landlords through chat
   - Manage personal profile
   - View property details

2. **Landlords (Senhorios)**
   - Add and manage property listings
   - Upload property images
   - Communicate with potential tenants
   - Edit room and house details

3. **Administrators (Gestores)**
   - Manage all users and properties
   - Approve/reject listings
   - Monitor system activity
   - Generate reports

### Key Features

- **Property Management**: Add rooms or complete houses with detailed specifications
- **Image Upload**: Drag-and-drop interface for property photos
- **Location Services**: Google Maps integration for property locations
- **Real-time Chat**: Communication system between users
- **Profile Management**: User profile customization

## 🛣 API Routes

The application includes various routes for different user types:

### Authentication Routes
- `GET /login` - Login page
- `POST /login` - Process login
- `GET /register` - Registration page
- `POST /register` - Process registration
- `GET /validation` - Account validation

### Student Routes
- `GET /aluno` - Student dashboard
- `GET /aluno/profile` - Student profile

### Landlord Routes
- `GET /Senhorio` - Landlord dashboard
- `GET /Senhorio/Adicionar` - Add property form
- `POST /Senhorio/Adicionar/AddQuarto` - Add room
- `POST /Senhorio/Adicionar/AddCasa` - Add house

### Administrator Routes
- `GET /gestor` - Admin dashboard
- `GET /gestor/Adicionar_Gestor` - Add admin form

### Chat Routes
- `GET /chat/{id}/GetChat` - Get chat messages
- `POST /chat/{id}/send-message` - Send message

## 🐛 Bug Fixes Applied

1. **JavaScript Variable Scope** - Fixed undeclared variable `i` in for loop
2. **Image Upload Handler** - Improved file handling with proper container structure
3. **Remove Icon Functionality** - Fixed closure issues in event handlers
4. **DOM Element Management** - Better organization of image containers

## 🤝 Contributing

1. Fork the project
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

This project is developed for educational purposes at Instituto Politécnico de Coimbra - ESTGOH.

## 📞 Support

For support or questions, please contact the development team through the institutional channels.

---

**© 2024 Instituto Politécnico de Coimbra. All rights reserved.**
