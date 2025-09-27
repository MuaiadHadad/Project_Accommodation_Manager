# 🏠 Accommodation Manager (Gestor de Alojamento)

A comprehensive web-based accommodation management system built with Laravel, designed to facilitate the management of student housing, room rentals, and property listings.

## 📋 Table of Contents

- [Overview](#overview)
- [Features](#features)
- [User Roles](#user-roles)
- [Technologies Used](#technologies-used)
- [Requirements](#requirements)
- [Installation](#installation)
- [Configuration](#configuration)
- [Usage](#usage)
- [API Endpoints](#api-endpoints)
- [Development](#development)
- [Project Structure](#project-structure)
- [Contributing](#contributing)
- [Documentation](#documentation)
- [License](#license)
- [Contact](#contact)

## 🎯 Overview

The Accommodation Manager is a full-stack web application designed to streamline the process of accommodation management for students, landlords, and administrators. The system provides a comprehensive platform for listing, searching, and managing rental properties with an integrated communication system.

### Key Objectives
- Simplify accommodation search for students
- Provide efficient property management tools for landlords
- Enable administrative oversight and control
- Facilitate communication between all parties
- Ensure secure and reliable transactions

## ✨ Features

### 🏠 Property Management
- **Room Listings**: Individual room rentals with detailed specifications
- **Complete House Listings**: Full property rentals
- **Property Details**: Comprehensive information including bathrooms, kitchens, living areas, services, and location
- **Image Gallery**: Multiple photos per property
- **Real-time Availability**: Live updates on property status

### 👥 User Management
- **Multi-role Authentication**: Secure login system for different user types
- **Profile Management**: Detailed user profiles with verification system
- **User State Control**: Admin ability to activate/deactivate accounts
- **Registration System**: Comprehensive signup process with email verification

### 💬 Communication System
- **Real-time Chat**: Integrated messaging between students and landlords
- **Conversation Management**: Organized chat histories
- **Notification System**: Alert system for new messages and updates

### 🔍 Search & Filter
- **Advanced Search**: Filter by location, price, amenities, and property type
- **Map Integration**: Google Maps integration for location visualization
- **Detailed Property Views**: Comprehensive property information pages

### 📱 Responsive Design
- **Mobile-Friendly**: Optimized for all device sizes
- **Modern UI**: Clean and intuitive user interface
- **Accessibility**: Built with accessibility standards in mind

## 👤 User Roles

### 🎓 Aluno (Student)
- Browse available accommodations
- Search and filter properties
- View detailed property information
- Contact landlords via integrated chat
- Manage personal profile and preferences

### 🏡 Senhorio (Landlord)
- List properties (rooms and complete houses)
- Manage property details and images
- Communicate with potential tenants
- Update property availability
- View and respond to inquiries

### 🛡️ Gestor (Administrator)
- Oversee all system operations
- Manage user accounts and permissions
- Monitor property listings
- Handle disputes and issues
- Generate system reports

## 🛠️ Technologies Used

### Backend
- **Laravel 10.x**: PHP web application framework
- **PHP 8.1+**: Server-side programming language
- **MySQL**: Relational database management
- **Eloquent ORM**: Database object-relational mapping

### Frontend
- **Blade Templates**: Laravel's templating engine
- **Bootstrap**: CSS framework for responsive design
- **JavaScript**: Client-side interactivity
- **jQuery**: JavaScript library for DOM manipulation
- **Vite**: Modern build tool and development server

### Additional Services
- **Google Maps API**: Location services and mapping
- **Pusher**: Real-time communication
- **Laravel Sanctum**: API authentication
- **Mail Services**: Email functionality

## 📋 Requirements

### System Requirements
- **PHP**: 8.1 or higher
- **Composer**: Dependency management for PHP
- **Node.js**: 16.x or higher
- **npm/yarn**: Package manager for JavaScript dependencies

### Database
- **MySQL**: 5.7 or higher
- **MariaDB**: 10.3 or higher (alternative)

### Web Server
- **Apache**: 2.4 or higher with mod_rewrite
- **Nginx**: 1.18 or higher (alternative)

## 🚀 Installation

### 1. Clone the Repository
```bash
git clone https://github.com/MuaiadHadad/Project_Accommodation_Manager.git
cd Project_Accommodation_Manager/laravel
```

### 2. Install PHP Dependencies
```bash
composer install
```

### 3. Install JavaScript Dependencies
```bash
npm install
```

### 4. Environment Configuration
```bash
cp .env.example .env
php artisan key:generate
```

### 5. Database Setup
```bash
# Create database
mysql -u root -p
CREATE DATABASE accommodation_manager;
exit

# Run migrations
php artisan migrate
```

### 6. Build Assets
```bash
npm run build
# or for development
npm run dev
```

### 7. Start the Development Server
```bash
php artisan serve
```

The application will be available at `http://localhost:8000`

## ⚙️ Configuration

### Database Configuration
Update your `.env` file with your database credentials:
```env
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=accommodation_manager
DB_USERNAME=your_username
DB_PASSWORD=your_password
```

### Google Maps Integration
Add your Google Maps API key:
```env
GOOGLE_MAPS_API_KEY=your_api_key_here
```

### Mail Configuration
Configure email settings for notifications:
```env
MAIL_MAILER=smtp
MAIL_HOST=your_smtp_host
MAIL_PORT=587
MAIL_USERNAME=your_email
MAIL_PASSWORD=your_password
MAIL_ENCRYPTION=tls
```

### Pusher Configuration (for real-time features)
```env
PUSHER_APP_ID=your_app_id
PUSHER_APP_KEY=your_app_key
PUSHER_APP_SECRET=your_app_secret
PUSHER_APP_CLUSTER=your_cluster
```

## 📖 Usage

### For Students (Alunos)
1. **Registration**: Create an account with valid email
2. **Email Verification**: Confirm your email address
3. **Browse Properties**: Explore available accommodations
4. **Search & Filter**: Use advanced search options
5. **Contact Landlords**: Send messages through the integrated chat
6. **Manage Profile**: Update personal information and preferences

### For Landlords (Senhorios)
1. **Register as Landlord**: Create a landlord account
2. **Add Properties**: List rooms or complete houses
3. **Property Management**: Update details, prices, and availability
4. **Photo Management**: Upload and manage property images
5. **Communication**: Respond to student inquiries
6. **Monitor Listings**: Track property performance

### For Administrators (Gestores)
1. **User Management**: Activate/deactivate user accounts
2. **Content Moderation**: Review and approve listings
3. **System Monitoring**: Oversee platform operations
4. **Report Generation**: Generate usage and performance reports

## 🔗 API Endpoints

### Authentication
- `POST /login` - User login
- `POST /register` - User registration
- `POST /logout` - User logout
- `GET /validation` - Email validation

### Properties
- `GET /` - Homepage with property listings
- `GET /Senhorio` - Landlord dashboard
- `GET /Senhorio/Adicionar` - Add new property
- `POST /Senhorio/Adicionar/AddQuarto` - Add new room
- `POST /Senhorio/Adicionar/AddCasa` - Add new house

### Chat System
- `GET /chat/{id}/GetChat` - Get chat messages
- `POST /chat/{id}/send-message` - Send message
- `GET /chat/{id}/criarchat` - Create new chat for room
- `GET /chat/{id}/criarchatC` - Create new chat for house

### Administration
- `GET /Gestor` - Admin dashboard
- `GET /gestor/Adicionar_Gestor` - Add new administrator
- `POST /AddGestor` - Create administrator account

## 🔧 Development

### Setting up Development Environment
```bash
# Clone and navigate to project
git clone https://github.com/MuaiadHadad/Project_Accommodation_Manager.git
cd Project_Accommodation_Manager/laravel

# Install dependencies
composer install
npm install

# Setup environment
cp .env.example .env
php artisan key:generate

# Setup database
php artisan migrate

# Start development servers
php artisan serve
npm run dev
```

### Running Tests
```bash
# Run PHP tests
php artisan test

# Run JavaScript tests (if applicable)
npm run test
```

### Code Style and Linting
```bash
# PHP code style (Laravel Pint)
./vendor/bin/pint

# JavaScript linting
npm run lint
```

## 📁 Project Structure

```
Project_Accommodation_Manager/
├── laravel/                    # Main Laravel application
│   ├── app/
│   │   ├── Http/Controllers/   # Application controllers
│   │   ├── Models/            # Eloquent models
│   │   └── Mail/              # Mail classes
│   ├── config/                # Configuration files
│   ├── database/
│   │   ├── migrations/        # Database migrations
│   │   └── seeders/           # Database seeders
│   ├── public/                # Public assets
│   ├── resources/
│   │   ├── views/             # Blade templates
│   │   ├── css/               # Stylesheets
│   │   └── js/                # JavaScript files
│   ├── routes/                # Route definitions
│   └── storage/               # File storage
├── Diagramas/                 # System diagrams
├── Sprint/                    # Sprint documentation
├── Requisitos/                # Requirements documentation
└── protótipos/                # UI prototypes
```

### Key Directories
- **Controllers**: Handle HTTP requests and business logic
- **Models**: Represent database entities and relationships
- **Views**: Blade templates for the user interface
- **Migrations**: Database schema definitions
- **Public**: Publicly accessible files (CSS, JS, images)

## 🤝 Contributing

We welcome contributions to improve the Accommodation Manager system!

### How to Contribute
1. **Fork the Repository**: Create your own fork
2. **Create Feature Branch**: `git checkout -b feature/AmazingFeature`
3. **Commit Changes**: `git commit -m 'Add some AmazingFeature'`
4. **Push to Branch**: `git push origin feature/AmazingFeature`
5. **Open Pull Request**: Submit your changes for review

### Development Guidelines
- Follow Laravel coding standards
- Write clear, descriptive commit messages
- Include tests for new features
- Update documentation as needed
- Ensure responsive design compatibility

### Code Style
- Use Laravel Pint for PHP code formatting
- Follow PSR-12 coding standards
- Use meaningful variable and function names
- Comment complex logic appropriately

## 📚 Documentation

### Available Documentation
- **Requirements**: Detailed system requirements (Portuguese)
- **User Manual**: Step-by-step user guide
- **Developer Manual**: Technical implementation details
- **Diagrams**: System architecture and database design
- **Prototypes**: UI/UX design mockups

### Links
- [Interactive Prototype](https://3g4xma.axshare.com/?id=gx9zmm)
- Sprint Documentation (Available in `/Sprint` directory)
- Technical Reports (Available in project folders)

## 📄 License

This project is developed as part of an academic program. Please refer to the institution's guidelines for usage and distribution.

## 📞 Contact

**Developer**: Muaiad Hadad
**Institution**: ESTGOH (Escola Superior de Tecnologia e Gestão de Oliveira do Hospital)
**Academic Program**: Licenciatura em Engenharia Informática (LEI)

For questions, suggestions, or support, please contact through the institution's official channels.

---

*This project was developed as part of the Software Engineering curriculum at ESTGOH, demonstrating practical application of web development technologies and software engineering principles.*
