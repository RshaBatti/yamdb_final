# Проект "Yamdb"

![example workflow](https://github.com/github/docs/actions/workflows/main.yml/badge.svg)
### Описание
- Проект YaMDb собирает отзывы (Review) пользователей на произведения (Title).
Произведения делятся на категории: «Книги», «Фильмы», «Музыка». Список категорий
(Category) может быть расширен (например, можно добавить категорию
«Изобразительное искусство» или «Ювелирка»).
Сами произведения в YaMDb не хранятся, здесь нельзя посмотреть фильм или 
послушать музыку.
- К проекту по адресу _http://84.252.134.63:81/redoc_ подключена документация API YaMDb. В ней описаны
шаблоны запросов к API и структура ожидаемых ответов. Для каждого запроса 
указаны уровни прав доступа: пользовательские роли, которым разрешён запрос.
- Приложение доступно по адресу _http://84.252.134.63:81_
### Технологии
Python 3.7
Django 2.2.19
### Запуск проекта
Для запуска приложения у себя локально на компьютере необходимо:
1. клонировать код выложенный в репозитории
2. в файле nginx/default.conf изменить строку 
```
server_name 84.252.134.63
```
на
```
server_name localhost
```
3. в файле docker-compose.yaml изменить строку
```
  web:
    image: zekist/yamdb_final
```
на
```
  web:
    build: .
```
4. выполнить команду
```
sudo docker-compose up -d --build
``` 
5. выполнить загрузку статики:
```
sudo docker-compose exec web python manage.py collectstatic --no-input
```
6. выполнить миграции:
```
sudo docker-compose exec web python manage.py makemigrations 
sudo docker-compose exec web python manage.py migrate
``` 
В случае размещения приложения на сервере необходимо сделать следующие шаги:
1. сделать fork репозитория
2. клонировать код
3. в файле nginx/default.conf изменить строку 
```
server_name 84.252.134.63
```
на
```
server_name <ip вашего сервера>
```
4. в файле docker-compose.yaml изменить строку
```
  web:
    image: zekist/yamdb_final
```
на
```
  web:
    image: <адрес образра на Docker hub>
```
5. Запушить изменения на Github
```
### Авторы
Поршнев Кирилл