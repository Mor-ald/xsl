# Морозов Алексей P41091 
## xsl
Задание №1:
https://mor-ald.github.io/xsl/math.xml

Задание №2:
https://mor-ald.github.io/xsl/graf.xml

Курсовой проект:


## Задания с огоньком: 
Чекинатор 26-02-2022-ast и Чекинатор 05-03-2022-2-ast(второй в день пары P41091): 
PRE DEC

Чекинатор 26-02-2022-1-eq и Чекинатор 05-03-2022-1-eq (второй в день пары P41091):
https://kodaktor.ru/g/df93512

Чекинатор 02-04-2022-callback:
```
function task(x, callbackfucn){
    return callbackfucn(null, "morald"+x)
}
```

Чекинатор 04-04-222-prom1:
```
function task(x) {
    return new Promise(function(resolve, reject) {
      if (x >= 18) {
                reject("no")
      } else if (x < 18) {
                resolve('yes')
      } else if (x == 0) {
        resolve('morald')
        }
    })
}
```

Чекинатор «Деструктуризация» - 1:
```
let a; ({ a } = { a: 5 }); console.log(a);
```

Чекинатор «Промис»:
```
async function task (x) {
    const name = await x.name
        return Promise.resolve(name  + 'morald')
}
```

Упражнение fetch + декструктуризация:
```
fetch('/j/users') 

.then(x => x.json()) 

.then(({users: x}) => x) 

.then(([_1, _2, _3, x]) => x)

.then(({login: x}) => x)

.then(x => console.log(x))
```

Чекинатор цепочка
```
function task (value) {
    if (value !== null && Object.getPrototypeOf(value) !== null) {
        let counter = 0;
        let currentObject = Object.getPrototypeOf(value);
        
        while (currentObject !== null) {
            currentObject = Object.getPrototypeOf(currentObject);
            counter++;
        }
        return counter
    }
    return 'morald'
}
```

Чекинатор JSX:
```
function task(){
    return <>morald</>
}
```

Чекинатор JSX-2:
```
function task(x) { 
    return <div>{x+"morald"}</div>
}
```

Проверятор pipe:
```
"morald" |> f |> g
```
