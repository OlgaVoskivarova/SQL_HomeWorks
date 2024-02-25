use homworks

db.createCollection('workes')

db.workes.insertMany([{_id:1, firstName:'Petr', lastName: 'Sergeev', position: 'CEO',  salary: 7000},
                     {_id:2, firstName: 'Viktor', lastName:'Semenov', position: 'Web-developer', salary: 5000},
                     {_id:3, firstName: 'Nikita', lastName: 'Petrov', position: 'Assistant', salary: 4500},
                     {_id:4, firstName: 'Inna', lastName:'Orlova', position:'Accountant', salary: 4500},
                     {_id:5, firstName: 'Maxim', lastName: 'Maximov', position: 'Assistant', salary: 2500},
                     {_id:6, firstName:'Inna', lastName: 'Sidorova', position: 'Accountant', salary: 4000 } ])
-- Вывести из этой коллекции сотрудников у которых зарплата выше 4000.
                     db.workes.find({salary:{$gt: 4000}})
-- Вывести сотрудников, у которых имя входит в список ('Инна', 'Максим', 'Петр')
                     db.workes.find({firstName:{$in:['Inna', 'Maxim', 'Petr']}})

-- Вывести сотрудников из отделов Accountant и Assistant, которые зарабатывают меньше 4500.
                     db.workes.find({$and:[{salary:{$gte: 4500}},
                      {position:{$in:['Accounant', 'Assistant']}}]})

-- //Из коллекции удалить сотрудников с именем Инна.
                      db.workes.deleteMany({firsName: 'Inna'})