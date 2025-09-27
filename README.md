# Project Accommodation Manager (Gestor de Alojamento)

A comprehensive web application for managing student accommodations, built with Laravel. This platform connects students, landlords, and administrators in a seamless accommodation management system.

## 🏠 Overview

The Accommodation Manager is a multi-role platform designed to streamline the process of finding, managing, and booking student accommodations. It serves three main user types:

- **Students (Aluno)**: Search and bookmark accommodations, communicate with landlords
- **Landlords (Senhorio)**: List and manage properties, communicate with potential tenants
- **Managers (Gestor)**: Oversee the platform, approve listings, and manage users

## ✨ Key Features

### For Students
- 🔍 Browse and search available accommodations
- ❤️ Save favorite properties
- 💬 Chat with landlords
- 👤 Manage personal profile
- 📧 Email verification system

### For Landlords
- 🏡 Add and manage property listings (rooms and full houses)
- 📸 Upload property photos
- 📋 Detailed property information (amenities, location, contact details)
- 💬 Chat with interested students
- 📊 View property status and inquiries

### For Managers
- 👥 User management and approval system
- 🏠 Property approval and moderation
- 📈 Platform oversight and administration
- 📧 Email notifications for status changes

### General Features
- 🔐 Secure authentication and authorization
- 📱 Responsive web design
- 🗺️ Google Maps integration
- 📧 Email notifications
- 💬 Real-time chat system
- 🔍 Advanced property search and filtering
- 📄 Pagination for large data sets

## 🛠️ Technology Stack

- **Backend**: Laravel 10.x (PHP 8.1+)
- **Frontend**: Blade Templates, Vite, JavaScript
- **Database**: MySQL
- **Additional Libraries**:
  - Google Maps API integration
  - Pusher for real-time features
  - Guzzle HTTP client
  - Laravel Sanctum for API authentication

## 📋 Prerequisites

Before installation, ensure you have:

- PHP 8.1 or higher
- Composer
- Node.js and npm
- MySQL database
- Web server (Apache/Nginx) or use Laravel's built-in server

## 🚀 Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/MuaiadHadad/Project_Accommodation_Manager.git
   cd Project_Accommodation_Manager
   ```

2. **Navigate to Laravel directory**
   ```bash
   cd laravel
   ```

3. **Install PHP dependencies**
   ```bash
   composer install
   ```

4. **Install Node.js dependencies**
   ```bash
   npm install
   ```

5. **Environment Configuration**
   ```bash
   cp .env.example .env
   php artisan key:generate
   ```

6. **Configure your `.env` file**
   ```env
   APP_NAME="Accommodation Manager"
   APP_URL=http://localhost:8000

   DB_CONNECTION=mysql
   DB_HOST=127.0.0.1
   DB_PORT=3306
   DB_DATABASE=accommodation_manager
   DB_USERNAME=your_username
   DB_PASSWORD=your_password

   # Mail Configuration (for notifications)
   MAIL_MAILER=smtp
   MAIL_HOST=your_smtp_host
   MAIL_PORT=587
   MAIL_USERNAME=your_email
   MAIL_PASSWORD=your_password
   MAIL_ENCRYPTION=tls

   # Google Maps (optional, for location features)
   GOOGLE_MAPS_API_KEY=your_google_maps_api_key

   # Pusher (for real-time chat)
   PUSHER_APP_ID=your_pusher_app_id
   PUSHER_APP_KEY=your_pusher_key
   PUSHER_APP_SECRET=your_pusher_secret
   PUSHER_APP_CLUSTER=your_cluster
   ```

7. **Database Setup**
   ```bash
   php artisan migrate
   ```

8. **Build frontend assets**
   ```bash
   npm run build
   # or for development
   npm run dev
   ```

9. **Start the development server**
   ```bash
   php artisan serve
   ```

The application will be available at `http://localhost:8000`

## 📊 Database Structure

The application uses a comprehensive database schema including:

- **Users table**: Stores user information for all three roles
- **Accommodations**: Separate tables for rooms (`quarto`) and full houses (`casa_completa`)
- **Property details**: Amenities, location, contact information, services
- **Media**: Property photos and images
- **Chat system**: Messages between students and landlords
- **Favorites**: Student bookmarked properties
- **Validation**: Email verification and user approval system

## 🎯 User Roles & Permissions

### Student (Aluno)
- Register and verify email
- Browse accommodations
- Save favorites
- Initiate chat with landlords
- Manage profile

### Landlord (Senhorio)
- Register and get approved by managers
- Add property listings
- Upload property photos
- Manage property details
- Respond to student inquiries
- View property status

### Manager (Gestor)
- Approve/reject user registrations
- Moderate property listings
- Manage platform users
- Send status notifications
- Platform administration

## 🔧 Development

### Running Tests
```bash
php artisan test
```

### Code Style
The project follows Laravel coding standards. Use Laravel Pint for code formatting:
```bash
./vendor/bin/pint
```

### Database Commands
```bash
# Fresh migration (⚠️ destroys data)
php artisan migrate:fresh

# Rollback migrations
php artisan migrate:rollback

# Check migration status
php artisan migrate:status
```

### Asset Compilation
```bash
# Development (with watching)
npm run dev

# Production build
npm run build
```

## 📁 Project Structure

```
├── laravel/                 # Main Laravel application
│   ├── app/
│   │   ├── Http/Controllers/
│   │   │   ├── AlunoContoller.php        # Student functionality
│   │   │   ├── SenhorioControllers.php   # Landlord functionality
│   │   │   ├── GestorControllers.php     # Manager functionality
│   │   │   ├── LoginController.php       # Authentication
│   │   │   └── ...
│   │   └── Mail/                         # Email templates
│   ├── resources/
│   │   └── views/
│   │       ├── Page_Aluno/              # Student pages
│   │       ├── Page_Senhorio/           # Landlord pages
│   │       ├── Page_Gestor/             # Manager pages
│   │       └── inicio/                  # Home pages
│   ├── database/migrations/             # Database schema
│   └── routes/web.php                   # Application routes
├── Diagramas/                          # System diagrams
├── Requisitos/                         # Requirements documentation
└── protótipos/                         # UI prototypes
```

## 🌐 API Endpoints

Key routes include:

- `/` - Home page with property listings
- `/login` - User authentication
- `/register` - User registration
- `/Aluno` - Student dashboard
- `/Senhorio` - Landlord dashboard
- `/gestor` - Manager dashboard
- `/chat/{id}/*` - Chat functionality
- `/validation` - Email verification

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

### Development Guidelines
- Follow Laravel coding standards
- Write meaningful commit messages
- Add tests for new features
- Update documentation as needed
- Ensure responsive design compatibility

## 📧 Email Notifications

The system sends automated emails for:
- User registration verification
- Account status changes
- Property approval notifications
- Password reset requests

## 🗺️ Maps Integration

The application integrates with Google Maps API for:
- Property location display
- Address validation
- Interactive maps on property listings

## 📱 Mobile Responsiveness

The application is designed to work seamlessly across:
- Desktop computers
- Tablets
- Mobile phones

## 🔒 Security Features

- Password hashing and secure authentication
- Email verification for new accounts
- Role-based access control
- CSRF protection
- SQL injection prevention
- XSS protection

## 📞 Support

For support and questions:
- Create an issue in this repository
- Check the documentation in the `/Requisitos` folder
- Review the system diagrams in `/Diagramas`

## 📄 License

This project is licensed under the MIT License - see the Laravel framework license for details.

## 🙏 Acknowledgments

- Built with Laravel Framework
- Google Maps API for location services
- Pusher for real-time features
- All contributors and testers

---

**Note**: This is an academic project for accommodation management. Make sure to configure all environment variables properly before deployment to production.
