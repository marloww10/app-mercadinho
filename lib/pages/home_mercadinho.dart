// ignore_for_file: unused_local_variable

import 'package:appmercadinho/models/produto.dart';
import 'package:flutter/material.dart';

class HomeMercadinho extends StatefulWidget {
  const HomeMercadinho({super.key});

  @override
  State<HomeMercadinho> createState() => _HomeMercadinhoState();
}

class _HomeMercadinhoState extends State<HomeMercadinho> {
  final nomeProdutoController = TextEditingController();
  final valorProdutoController = TextEditingController();

  List<Produto> listaDeProdutosMercadinho = [];

  double calcularValorTotal() {
    double valorCarrinhoInicial = 0;
    for (var produto in listaDeProdutosMercadinho) {
      valorCarrinhoInicial += produto.valor;
    }
    return valorCarrinhoInicial;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Mercadinho"), centerTitle: true),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    TextField(
                      controller: nomeProdutoController,
                      decoration: InputDecoration(hint: Text("Ex: Arroz")),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(hint: Text("Ex: 12.99")),
                      controller: valorProdutoController,
                      keyboardType: TextInputType.numberWithOptions(),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          String nomeProduto = nomeProdutoController.text;
                          double? valorProduto =
                              double.tryParse(valorProdutoController.text) ?? 0;

                          Produto produto = Produto(nomeProduto, valorProduto);
                          if (produto.nome == "" || produto.valor <= 0) {
                            showDialog(
                              context: context,
                              builder: (BuildContext bc) {
                                return AlertDialog(
                                  title: Text("Tente novamente"),
                                  content: Text(
                                    "Nome vazio ou valor incorreto",
                                  ),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text(
                                        "Ok",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            );
                          } else {
                            setState(() {
                              listaDeProdutosMercadinho.add(produto);
                            });
                            nomeProdutoController.clear();
                            valorProdutoController.clear();

                            Navigator.pop(context);
                          }
                        },
                        child: Text("Confirmar"),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
        child: Icon(Icons.add),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),

              child: Text(
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                "Total da lista: R\$${calcularValorTotal().toStringAsFixed(2).replaceAll(".", ",")}",
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: listaDeProdutosMercadinho.length,
                itemBuilder: (BuildContext context, int index) {
                  Produto produto = listaDeProdutosMercadinho[index];
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    child: Card(
                      margin: EdgeInsets.only(bottom: 12),
                      child: Dismissible(
                        onDismissed: (direction) {
                          setState(() {
                            listaDeProdutosMercadinho.removeAt(index);
                          });
                        },
                        dismissThresholds: {DismissDirection.endToStart: 0.3},
                        confirmDismiss: (direction) {
                          return showDialog(
                            context: context,
                            builder: (BuildContext bc) {
                              return AlertDialog(
                                title: Text("Vai remover?"),
                                content: Text("Clique em Sim para continuar"),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop(false);
                                    },
                                    child: Text(
                                      "Não",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop(true);
                                    },
                                    child: Text(
                                      "Sim",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        direction: DismissDirection.endToStart,
                        key: Key(produto.nome),
                        background: Container(
                          alignment: Alignment.centerRight,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.red,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 10,
                          ),
                          child: Icon(Icons.delete, color: Colors.white),
                        ),
                        child: ListTile(
                          title: Text(
                            produto.nome,
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          subtitle: Text(
                            "R\$${produto.valor.toStringAsFixed(2).replaceAll(".", ",")}",
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
