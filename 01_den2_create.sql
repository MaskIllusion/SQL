CREATE TABLE IF NOT EXISTS students (
    -- Создай таблицу студентов, если её нет
    student_id TEXT PRIMARY KEY,
    -- Номер студента; TEXT — текст; PRIMARY KEY — ключ
    last_name TEXT, -- Фамилия; TEXT — текст
    first_name TEXT, -- Имя; TEXT — текст
    group_name TEXT -- Группа; TEXT — текст
); -- Закончи создание таблицы студентов
CREATE TABLE IF NOT EXISTS programs (
    -- Создай таблицу программ, если её нет
    program_id TEXT PRIMARY KEY,
    -- Номер программы; TEXT — текст; PRIMARY KEY — ключ
    title TEXT, -- Название; TEXT — текст
    version TEXT, -- Версия; TEXT — текст
    purpose TEXT -- Назначение; TEXT — текст
); -- Закончи создание таблицы программ
CREATE TABLE IF NOT EXISTS tickets (
    -- Создай таблицу заявок, если её нет
    ticket_id TEXT PRIMARY KEY,
    -- Номер заявки; TEXT — текст; PRIMARY KEY — ключ
    inventory_no TEXT,
    -- Номер ПК из таблицы computers; TEXT — текст
    ticket_date TEXT, -- Дата заявки; TEXT — текст
    problem TEXT, -- Проблема; TEXT — текст
    status TEXT -- Статус заявки; TEXT — текст
); -- Закончи создание таблицы заявок
INSERT OR IGNORE INTO students
    -- Добавь студентов; OR IGNORE — без повтора ключа
    (student_id, last_name, first_name, group_name)
    -- Номер, фамилия, имя, группа
VALUES -- VALUES — значения для добавления
    ('СТ-01', 'Иванов', 'Иван', '35ИС-24'),
    -- Первый студент группы 35ИС-24
    ('СТ-02', 'Петрова', 'Анна', '35ИС-24'),
    -- Второй студент группы 35ИС-24
    ('СТ-03', 'Сидоров', 'Олег', '35ИС-24');
	-- Третий студент группы 35ИС-24
INSERT OR IGNORE INTO programs
    -- Добавь программы; OR IGNORE — без повтора ключа
    (program_id, title, version, purpose)
    -- Номер, название, версия, назначение
VALUES -- VALUES — значения для добавления
    ('ПР-01', 'Windows', '10', 'учебная'),
    -- Учебная Windows 10
    ('ПР-02', 'DB Browser', '3.13', 'работа с базой'),
    -- Программа для работы с базой
    ('ПР-03', 'Браузер', 'текущая', 'интернет');
    -- Браузер для интернета
INSERT OR IGNORE INTO tickets
    -- Добавь заявки; OR IGNORE — без повтора ключа
    (ticket_id, inventory_no, ticket_date,
     problem, status)
    -- Номер, ПК, дата, проблема, статус
VALUES -- VALUES — значения для добавления
    ('ЗВ-01', 'ПК-216-02', '2026-09-08',
     'не включается монитор', 'открыта'),
    -- Заявка на ПК-216-02
    ('ЗВ-02', 'ПК-216-01', '2026-09-08',
     'нет мыши', 'закрыта');
    -- Заявка на ПК-216-01
SELECT student_id, last_name, first_name, group_name
    -- SELECT — выбери эти четыре столбца
FROM students
    -- FROM — из таблицы students, то есть студентов
ORDER BY student_id;
    -- ORDER BY — упорядочь по номеру студента
