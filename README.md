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
  - `phone_number` (USERNAME_FIELD), `user_type`, `full_name`, `birthday`, `gender`, `address`, `email`, `image`, `is_active`, `is_staff`
- **SupervisorProfile**
  - FK to `CustomUser` (user_type=supervisor)
- **StudentProfile**
  - OneToOne to `CustomUser` (user_type=student), `section`, `date_joining_sections`, `add_by` (Supervisor)
- **AcademicLevel**
  - `name`, `academic_year`, `level_order`
- **Students_Academic_Levels**
  - FK to `StudentProfile`, FK to `AcademicLevel`, `registration_date`, `is_current`

## Database Diagrams

You can view and edit the project’s Entity-Relationship Diagram (ERD) using Mermaid Chart:

- **Editor**: [Mermaid Chart Editor](https://www.mermaidchart.com/app/projects/532fb716-aa7b-4050-a479-64716a789f96/diagrams/ceb05a3c-3981-4f40-9d26-ea181c7d0966/version/v0.1/edit)

Below is the current diagram preview:

![Database Diagram](https://www.mermaidchart.com/raw/ceb05a3c-3981-4f40-9d26-ea181c7d0966?theme=dark&version=v0.1&format=svg)

## Process Flow Diagram
In addition to the ERD, here's the **Process Flow** of how the system works:
- **Editor**: [Mermaid Process Flow Editor](https://www.mermaidchart.com/app/projects/532fb716-aa7b-4050-a479-64716a789f96/diagrams/19e02c2d-6d26-4521-8e09-3210a2c783cd/version/v0.1/edit)

Below is the current diagram preview:
![Process Flow Diagram](https://www.mermaidchart.com/raw/19e02c2d-6d26-4521-8e09-3210a2c783cd?theme=light&version=v0.1&format=svg)


## Installation with Docker

To run the project using Docker and Docker Compose, follow these steps:

1. **Clone the repository**:
   ```bash
   git clone https://github.com/yourusername/school-management.git
   cd school-management
   ```
2. **Build and run Docker containers**:
   ```bash
   docker-compose up --build
   ```
3. **Apply migrations**:
   ```bash
   docker-compose exec web python manage.py migrate
   ```
4. **Create a superuser**:
   ```bash
   docker-compose exec web python manage.py createsuperuser
   ```
5. **Access the application** at `http://localhost:8000`

To stop and remove containers:

```bash
docker-compose down
```

---

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



