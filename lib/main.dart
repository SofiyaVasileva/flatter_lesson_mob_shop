
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Phone Shop',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Добро пожаловать!', style: TextStyle(
            color: Colors.white
        )
          ,),
        backgroundColor: const Color.fromARGB(255, 49, 101, 107),
      ),
      body: Center(
          child: Container( margin: const EdgeInsets.all(20),

            child: Column(
              children: [
                const Text('Для продолжения Вам необходимо пройти авторизацию.',
                    style: TextStyle(
                      fontSize: 20,
                    )
                ),
                Container(
                  margin: const EdgeInsetsDirectional.only(bottom: 10),
                  constraints: const BoxConstraints (maxWidth: 200),
                  child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('Телефон или e-mail',
                            style: TextStyle(
                              fontSize: 20,
                            )
                        ),
                        TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "Введите логин",
                                fillColor: Color.fromARGB(49, 66, 0, 131),
                                filled: true
                            )
                        ),
                        Text('Пароль',
                            style: TextStyle(
                              fontSize: 20,
                            )
                        ),
                        TextField(decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Введите пароль",
                            fillColor: Color.fromARGB(31, 0, 117, 130),
                            filled: true
                        )
                        )
                      ]
                  ),
                ),
                Container(
                  height: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                          child: const Text('Войти'),
                          onPressed:(){
                            Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const MainMenu()),
                            );
                          }
                      ),
                      TextButton(
                        child: const Text('Регистрация'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const SecondRoute()),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Регистрация', style: TextStyle(
          color: Colors.white)
        ),
      backgroundColor: const Color.fromARGB(255, 49, 101, 107),
      ),
      body: Center(
        child:
        Column(
            children: [
              Container(
                margin: const EdgeInsetsDirectional.only(bottom: 10),
                constraints: const BoxConstraints (maxWidth: 250, maxHeight: 350),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text('Введите свой логин',
                          style: TextStyle(
                            fontSize: 20,
                          )
                      ),
                      const TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Телефон или e-mail",
                              fillColor: Color.fromARGB(49, 66, 0, 131),
                              filled: true
                          )
                      ),
                      const Text('Введите новый пароль',
                          style: TextStyle(
                            fontSize: 20,
                          )
                      ),
                      const TextField(decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Введите пароль",
                          fillColor: Color.fromARGB(31, 0, 117, 130),
                          filled: true
                      )
                      ),
                      ElevatedButton(
                        onPressed:(){
                           Navigator.pop(context);
                        },
                        child: const Text('Зарегестрироваться'),
                      ),
                    ]
                ),
              ),
            ]
        ),
      ),
    );
  }
}

const List<String> title = <String>["Смартфон S100 12","Смартфон Redmi A2+ 3","Смартфон Pova NEO 3 8"];
const List<String> company = <String>["Doogee","Xiaomi","Tecno"];
const List<String> link = <String>["https://ir.ozone.ru/s3/multimedia-x/wc1000/6881221869.jpg","https://ir.ozone.ru/s3/multimedia-2/wc1000/6703462646.jpg","https://ir.ozone.ru/s3/multimedia-1-s/wc1000/6917370028.jpg"];
const List<String> info = <String>["Тип - Смартфон; Диагональ экрана, дюймы, 6.58; Емкость аккумулятора, мАч, 10800; Процессор Helio G99 (8 ядер), 2.2 ГГц","Тип - Смартфон","Тип - Смартфон"];

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Лента', style: TextStyle(
            color: Colors.white,
        fontSize: 45)
      ),
      backgroundColor: const Color.fromARGB(255, 49, 101, 107),
      ),
      body: Center(
        child: 
              ListView.builder(
                physics: const ClampingScrollPhysics(),
                shrinkWrap: true,
                itemCount: title.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: const EdgeInsetsDirectional.all(20),
                    child: TextButton(
                      child: 
                      Column (children: [
                        Text(title[index], style: 
                        const TextStyle(fontSize: 25
                        ), 
                        ),
                        Text("Компания-производитель: ${company[index]}"),
                        Image.network(link[index]),
                        Text("Основная информация: ${info[index]}"),
                         ]
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const SecondRoute()),
                          );
                        },
                       )
                     );
                    }
                  ),
                 )
               );
  }
}
