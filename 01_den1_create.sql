CREATE TABLE IF NOT EXISTS computers ( -- Создай таблицу компьютеров, если её нет
    inventory_no TEXT PRIMARY KEY, -- Номер ПК; TEXT — текст; PRIMARY KEY — уникальный ключ
    model TEXT NOT NULL, -- Модель; TEXT — текст; NOT NULL — обязательно заполнить
    ram_gb INTEGER NOT NULL, -- Память в ГБ; INTEGER — целое; NOT NULL — обязательно
    is_ok INTEGER NOT NULL, -- Исправность: 1 — исправен, 0 — сломан; INTEGER — целое; NOT NULL — обязательно
    room INTEGER NOT NULL -- Кабинет; INTEGER — целое; NOT NULL — обязательно
); -- Закончи создание таблицы
 
INSERT OR IGNORE INTO computers -- Добавь в компьютеры; OR IGNORE — пропусти повтор ключа
    (inventory_no, model, ram_gb, is_ok, room) -- Номер ПК, модель, память, исправность, кабинет
VALUES -- VALUES — значения для добавления
    ('ПК-216-01', 'Lenovo V15', 8, 1, 216), -- Первый ПК: 8 ГБ, исправен, кабинет 216
    ('ПК-216-02', 'Acer Aspire', 4, 0, 216), -- Второй ПК: 4 ГБ, сломан, кабинет 216
    ('ПК-216-03', 'IRU Office', 16, 1, 216); -- Третий ПК: 16 ГБ, исправен, кабинет 216
 
SELECT inventory_no, model, ram_gb, is_ok, room -- SELECT — выбери эти пять столбцов
FROM computers -- FROM — из таблицы computers, то есть компьютеров
ORDER BY inventory_no; -- ORDER BY — упорядочь по номеру ПК
