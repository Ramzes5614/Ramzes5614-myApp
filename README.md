# app
 Незавершенный проекта с хакатона "Цифровой прорыв"
 
В репозитории app_back хранится код бэкенда
Он развернут на Heroku и вот его запросы:

1. https://easy-innovation.herokuapp.com/petition     POST добавление заявки
                                                      GET вывод всех заявок по популярности
{ 
    "title": "title3",
    "desc": "desc4",
    "solution_category": "Дополнительные сервисы3",
    "solution_character": "problems character3",
    "rewards": 5,
    "expenses_name": [
        "Затарат1",
        "Затрата2"
    ],
    "expenses_sum": [
        100, 
        200
    ],
    "introduction_stage": [
        "Этап1",
        "Этап2"
    ],
    "introduction_days":[
        10,
        20
    ]
}

2.  https://easy-innovation.herokuapp.com/users     POST - добавление пользователя

{
    "first_name": "Иван1",
    "last_name": "Иванов1",
    "father_name": "Иванович1",
    "date_of_birth": "1987-06-26",
    "position": "Монтажник1",
    "education": "hight",
    "experience": 3,
    "phone": "89345453442"
}

3.https://easy-innovation.herokuapp.com/comments/2(номер зявки)  POST - добавление коментария
                                                                 GET - комментарии одной заявки
{
    "message": "Это комментарий2",
    "date_time": "2020-11-29T00:45",
    "user_id": 1
}

4. https://easy-innovation.herokuapp.com/likes/2(номер заявки)      PUT - поставить лайк заявке

Остыльные файлы относятся к front
