import 'dart:io';

double troco = 0;
double valorDinheiro = 0;

void main() {
  print("Seja bem-vindo(a) a Luana Mackeup!");
  String nome = dadosClienteNome();
  String cpf = dadosClienteCPF();

  List<ProdutoEscolido> carrinho = [];

  List<Produto> listaDeProdutos = [
    Produto("Base Líquida", 29.90, 10),
    Produto("Batom", 19.50, 25),
    Produto("Máscara de Cílios", 35.00, 15),
    Produto("Sombra de olho", 45.00, 5),
    Produto("Iluminador", 32.50, 23),
    Produto("Gloss", 20.50, 40),
    Produto("Pó compacto", 30.00, 12),
  ];

  
  escolherprodutos(listaDeProdutos, carrinho);

  double totalCompra = mostrarCarrinho(carrinho);
  dynamic forma = formaPagamento(totalCompra);
  recibo(nome, cpf, totalCompra, carrinho, forma, troco);
}

class Produto {
  String nome;
  double preco;
  int estoque;

  Produto(this.nome, this.preco, this.estoque);
}

class ProdutoEscolido {
  Produto produto;
  int quantidade;

  ProdutoEscolido(this.produto, this.quantidade);
}

String dadosClienteNome() {
  stdout.write("Digite seu nome: ");
  String? nome = stdin.readLineSync();

  while (nome == null || nome.trim().isEmpty || nome.contains(RegExp(r'[0-9]'))) {
    print("Nome inválido. Não pode conter números. Tente de novo:");
    nome = stdin.readLineSync();
  }
  return nome;
}


String dadosClienteCPF() {
  stdout.write("Digite seu CPF: ");
  String? CPF = stdin.readLineSync();

  while (CPF == null || CPF.trim().isEmpty || CPF.contains(RegExp(r'[a-zA-Z]'))) {
    print("CPF inválido. Não pode conter letras. Digite novamente:");
    CPF = stdin.readLineSync();
  }
  return CPF;
}


void listagemProdutos(List<Produto> produtos) {
  print("\nListagem dos Produtos:\n");

  for (int i = 0; i < produtos.length; i++) {
    final p = produtos[i];
    print("\n---------------------------");
    print("Produto ${i + 1}:");
    print(" Nome do produto: ${p.nome}");
    print(" Preço do produto: R\$ ${p.preco.toStringAsFixed(2)}");
    print(" Estoque do produto: ${p.estoque} ");
  }
}

void escolherprodutos(List<Produto> produtos, List<ProdutoEscolido> carrinho) {
  while (true) {
    listagemProdutos(produtos);

    stdout.write("Digite qual produto você deseja (número) ou 'nao' para encerrar: ");
    String? entrada = stdin.readLineSync();

    if (entrada == null) continue;

    if (entrada.toLowerCase() == "nao" || entrada.toLowerCase() == "não") {
      print("Finalizando escolha....");
      break;
    }

    int? opcao = int.tryParse(entrada);
    if (opcao == null || opcao < 1 || opcao > produtos.length) {
      print("Opção inválida.");
      continue;
    }

    Produto produto = produtos[opcao - 1];

    int quantidade = 0;
    while (true) {
      stdout.write("Quantidade desejada: ");
      quantidade = int.parse(stdin.readLineSync()!);

      if (quantidade <= 0) {
        print("Quantidade inválida.");
      } else if (quantidade > produto.estoque) {
        print("Estoque insuficiente. Disponível: ${produto.estoque}");
      } else {
        break;
      }
    }

    carrinho.add(ProdutoEscolido(produto, quantidade));
    produto.estoque -= quantidade;

    print("\n--------------------------------------------------");
    print("Produto '${produto.nome}' adicionado ao carrinho.\n");
  }
}

double mostrarCarrinho(List<ProdutoEscolido> carrinho) {
  print("\n-------------------------------------");
  print("Seu carrinho de compra:");

  double total = 0;

  for (int i = 0; i < carrinho.length; i++) {
    ProdutoEscolido item = carrinho[i];
    double subtotal = item.produto.preco * item.quantidade;
    total += subtotal;

    print("\n---------------------------");
    print("Produto ${i + 1}:");
    print("  Nome: ${item.produto.nome}");
    print("  Quantidade: ${item.quantidade}");
    print("  Preço unitário: R\$ ${item.produto.preco.toStringAsFixed(2)}");
    print("  Subtotal: R\$ ${subtotal.toStringAsFixed(2)}\n");
  }

  print("Total da compra: R\$ ${total.toStringAsFixed(2)}");
  return total;
}

dynamic formaPagamento(double total) {
  print("-------------------------------------------");
  print("Escolha uma forma de pagamento ");
  print("1- Pix");
  print("2- Debito");
  print("3- Credito");
  print("4- Dinheiro");

  print("Digite sua opção: ");
  int opcao = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

  switch (opcao) {
    case 1:
      print("Pagamento efetuado com sucesso!");
      print("Valor total da sua compra: R\$ ${total.toStringAsFixed(2)}");
      return "Pix";
    case 2:
      print("Pagamento efetuado com sucesso!");
      print("Valor total da sua compra: R\$ ${total.toStringAsFixed(2)}");
      return "Débito";
    case 3:
      print("Pagamento efetuado com sucesso!");
      print("Valor total da sua compra: R\$ ${total.toStringAsFixed(2)}");
      return "Crédito";
    case 4:
      print("Valor total: R\$ ${total.toStringAsFixed(2)}");
      print("Informe o valor em dinheiro: ");
      valorDinheiro = double.parse(stdin.readLineSync()!);

      while (valorDinheiro < total) {
        print("Valor insuficiente. Informe novamente:");
        valorDinheiro = double.parse(stdin.readLineSync()!);
      }

      troco = valorDinheiro - total;
      print("Valor do troco: R\$ ${troco.toStringAsFixed(2)}");
      print("Pagamento efetuado com sucesso");
      return "Dinheiro";
    default:
      print("Opção inválida");
      return formaPagamento(total);
  }
}

void recibo(String nome, String CPF, double total, List<ProdutoEscolido> carrinho, String formaPagamento, double troco) {
  print("\n==============Recibo=============");
  print("\nDados do Cliente!");
  print("Nome do cliente: $nome");
  print("CPF do cliente: $CPF");

  print("\n=======Itens comprado=======");
  mostrarCarrinho(carrinho);

  print("=======Forma de pagamento=======");
  print("Forma de pagamento: $formaPagamento");
  if (formaPagamento == "Dinheiro") {
    print("Troco: R\$ ${troco.toStringAsFixed(2)}");
  }
  print("Total da compra: R\$ ${total.toStringAsFixed(2)}");
}
