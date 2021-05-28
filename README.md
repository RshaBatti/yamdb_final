# Проект "Yamdb"

![example workflow](https://github.com/github/docs/actions/workflows/main.yml/badge.svg)
### Описание
- Проект YaMDb собирает отзывы (Review) пользователей на произведения (Title).
Произведения делятся на категории: «Книги», «Фильмы», «Музыка». Список категорий
(Category) может быть расширен (например, можно добавить категорию
«Изобразительное искусство» или «Ювелирка»).
Сами произведения в YaMDb не хранятся, здесь нельзя посмотреть фильм или 
послушать музыку.
- К проекту по адресу /redoc подключена документация API YaMDb. В ней описаны
шаблоны запросов к API и структура ожидаемых ответов. Для каждого запроса 
указаны уровни прав доступа: пользовательские роли, которым разрешён запрос.
### Технологии
Python 3.7
Django 2.2.19
### Запуск проекта в Docker
Команда для сборки образа:
```
docker-compose up -d --build
``` 
Загрузка статики:
```
docker-compose exec web python manage.py collectstatic --no-input
```
Выполнение миграций:
```
docker-compose exec web python manage.py makemigrations titles
``` 
Выполните команду ниже и следуйте инструкциям в консоли для создания 
суперпользователя:
```
docker-compose exec web python manage.py createsuperuser
```
Для загрузки тестовых данных выполните команду:
```
docker-compose exec web python manage.py loaddata fixtures.json
``` 

После выполнения команд указанных выше приложение будет доступно по адресу:
 _http://localhost/_
