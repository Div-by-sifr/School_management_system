# School Management System

A web-based School Management System built with Django, designed to manage users (students, teachers, guardians, supervisors), academic sections and levels, assignments, and provide a streamlined interface in Arabic (RTL) and LTR fields where needed.

## Features

- **Custom User Model**: Unifies multiple user types (student, teacher, guardian, supervisor) with phone number as username.
- **Role-Based Access**: Supervisors can add, edit, and delete students and academic records; each action shows real-time feedback messages (success or error) to the user.
- **Student Profiles**: One-to-one `StudentProfile` with section assignment, join date, added-by supervisor.
- **Academic Levels**: `Students_Academic_Levels` model linking students to academic levels, registration date, and a flag marking the current level.
- **CRUD Interfaces**:
  - Add, edit, delete supervisors and students.
  - Add, edit, delete academic level records per student.
- **Validation & Feedback**:
  - Inline field validation (unique phone/email, password strength).
  - Translated error messages in Arabic, RTL/LTR handling for email & phone inputs.
  - Prevent multiple "current" academic levels per student.
- **Search & Filters**: Django-filter integration for searching students and supervisors.
- **Internationalization**: Configured for Arabic (`ar`), with Django’s built-in translations.

## Tech Stack & Libraries

- **Python** 3.12.6
- **Django** 5.1.7
- **Database**: Mysql (phpmyadmin)
- **Frontend**: Bootstrap 5 (cards, forms, nav-tabs)
- **Django Apps**:
  - `accounts`: CustomUser, StudentProfile, SupervisorProfile, authentication, forms, views, templates
  - `academics`: Section, AcademicLevel, Students\_Academic\_Levels
- **Key Packages**:
  - `django-widget-tweaks`: Better form rendering in templates
  - `django-filter`: Flexible filtering for list views
  - `Pillow`: Image uploads
- **Utilities**:
  - Phone number input masks via HTML5 `inputmode` & JS
  - RTL/LTR toggling via the `dir` attribute

## Models Overview

- **CustomUser** (`AbstractBaseUser` + `PermissionsMixin`)
  - `phone_number` (USERNAME\_FIELD), `user_type`, `full_name`, `birthday`, `gender`, `address`, `email`, `image`, `is_active`, `is_staff`
- **SupervisorProfile**
  - FK to `CustomUser` (user\_type=supervisor)
- **StudentProfile**
  - OneToOne to `CustomUser` (user\_type=student), `section`, `date_joining_sections`, `add_by` (Supervisor)
- **AcademicLevel**
  - `name`, `academic_year`, `level_order`
- **Students\_Academic\_Levels**
  - FK to `StudentProfile`, FK to `AcademicLevel`, `registration_date`, `is_current`

## Installation

1. **Clone repository**:
   ```bash
   git clone https://github.com/yourusername/school-management.git
   cd school-management
   ```
2. **Create & activate virtualenv**:
   ```bash
   python -m venv venv
   source venv/bin/activate    # Linux/macOS
   venv\\Scripts\\activate   # Windows
   ```
3. **Install dependencies**:
   ```bash
   pip install -r requirements.txt
   ```

## Requirements

All project dependencies are managed via `requirements.txt`. To regenerate or update it, use:

```bash
pip freeze > requirements.txt
```

### Included Packages

- `Django==5.1.7`: Web framework
- `django-widget-tweaks`: Template-friendly form customization
- `django-filter`: Search/filter in Django list views
- `Pillow`: Image handling for user uploads
- `mysqlclient`: MySQL database driver for Django

These packages are essential for form customization, image support, and filtering in views.
4\. **Apply migrations**:

```bash
python manage.py migrate
```

5. **Create superuser** (for admin access):
   ```bash
   python manage.py createsuperuser
   ```
6. **Run development server**:
   ```bash
   python manage.py runserver
   ```

## Configuration

- **settings.py**:
  - `LANGUAGE_CODE = 'ar'`
  - `USE_I18N = True`, `USE_L10N = True`, middleware includes `LocaleMiddleware`
  - Configure `DATABASES` (Mysql)
  - Add `django_filters`, `widget_tweaks` to `INSTALLED_APPS`

## Usage

- Visit `/accounts/signup/` to register a supervisor
- Log in at `/accounts/login/` using phone number + password
- Navigate to **Supervisors** & **Students** management via the dashboard
- Add, edit, delete students and academic levels
- Search/filter lists with django-filter on list pages

## Contributing

1. Fork the repo
2. Create a new branch: `git checkout -b feature/YourFeature`
3. Commit your changes: `git commit -m 'Add some feature'`
4. Push: `git push origin feature/YourFeature`
5. Create a PR



