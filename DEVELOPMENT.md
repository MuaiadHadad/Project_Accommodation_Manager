# Development Guide

## 🛠 Development Setup

### Prerequisites
Ensure you have the following installed:
- PHP 8.1 or higher
- Composer
- Node.js 16+ and npm
- MySQL/MariaDB
- Git

### Quick Start

1. **Clone and Setup**
   ```bash
   git clone https://github.com/MuaiadHadad/Project_Accommodation_Manager.git
   cd Project_Accommodation_Manager/laravel
   ```

2. **Install Dependencies**
   ```bash
   # PHP dependencies
   composer install
   
   # Node.js dependencies
   npm install
   ```

3. **Environment Configuration**
   ```bash
   cp .env.example .env
   php artisan key:generate
   ```

4. **Database Setup**
   - Create a MySQL database
   - Update `.env` with your database credentials:
     ```env
     DB_CONNECTION=mysql
     DB_HOST=127.0.0.1
     DB_PORT=3306
     DB_DATABASE=accommodation_manager
     DB_USERNAME=your_username
     DB_PASSWORD=your_password
     ```

5. **Run Migrations**
   ```bash
   php artisan migrate
   ```

6. **Build Assets**
   ```bash
   npm run build
   ```

7. **Start Development Server**
   ```bash
   php artisan serve
   ```

## 🐛 Bug Fixes Applied

### JavaScript Issues Fixed

1. **Adicionar.js - Variable Scope Issues**
   - Fixed undeclared variable `i` in for loop (line 16)
   - Improved image container handling for file uploads
   - Fixed closure issues in remove icon event handlers

2. **Chat_JS.js - Variable Shadowing**
   - Fixed variable shadowing in nested loops
   - Renamed conflicting variables to avoid scope issues

3. **Route Controller Name**
   - Fixed typo: `AlunoContoller` → `AlunoController`
   - Updated both route file and controller class name

## 📁 Project Structure

The project follows Laravel conventions with some custom organization:

### Key Directories
- `app/Http/Controllers/` - Application controllers
- `resources/views/` - Blade templates organized by user type
- `public/` - Static assets and JavaScript files
- `routes/web.php` - Route definitions

### User Interface Organization
- **Page_aluno/** - Student interface
- **Page_Senhorio/** - Landlord interface  
- **Page_Gestor/** - Administrator interface
- **User/** - Authentication and user management

## 🎨 Frontend Assets

### CSS Framework
- Bootstrap for responsive design
- Custom CSS in `public/Style_*` directories
- Font Awesome for icons

### JavaScript Structure
- jQuery for DOM manipulation
- Custom validation scripts
- File upload handling
- Chat functionality

## 🔒 Authentication Flow

1. **Registration** - Users register with email validation
2. **Login** - Session-based authentication
3. **Role-based Access** - Different interfaces for different user types
4. **Password Reset** - Email-based password recovery

## 📊 Database Structure

The application uses several key tables:
- `user` - User accounts and profiles
- `quarto` - Room listings
- `casa` - House listings
- `feveritos` - User favorites
- `chat` - Message system

## 🚀 Deployment

### Production Considerations
1. Set `APP_ENV=production` in `.env`
2. Configure proper database credentials
3. Set up file storage for uploads
4. Configure mail settings for notifications
5. Set up proper web server (Apache/Nginx)

### Environment Variables
Key variables to configure:
```env
APP_NAME="Accommodation Manager"
APP_ENV=production
APP_DEBUG=false
APP_URL=https://your-domain.com

DB_CONNECTION=mysql
DB_HOST=your-db-host
DB_PORT=3306
DB_DATABASE=your-db-name
DB_USERNAME=your-db-user
DB_PASSWORD=your-db-password

MAIL_MAILER=smtp
MAIL_HOST=your-smtp-host
MAIL_PORT=587
MAIL_USERNAME=your-email
MAIL_PASSWORD=your-password
```

## 🧪 Testing

Run the test suite:
```bash
php artisan test
```

## 🤝 Contributing

1. Create a feature branch
2. Make your changes
3. Test thoroughly
4. Update documentation if needed
5. Submit a pull request

## 📞 Support

For development questions or issues:
- Check existing issues in the repository
- Review this documentation
- Contact the development team