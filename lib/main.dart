import 'package:flutter/material.dart'; // Importa o pacote Flutter para construir a interface do usuário

void main() {
  runApp(const MyApp()); // Inicializa o aplicativo chamando a função `runApp` com o widget principal `MyApp`
}

class MyApp extends StatelessWidget {
  // Define o widget `MyApp`, que é imutável e serve como ponto de entrada da aplicação
  const MyApp({Key? key}) : super(key: key); // Construtor para `MyApp` com uma chave opcional

  @override
  Widget build(BuildContext context) {
    // Método obrigatório `build` que retorna a árvore de widgets
    return MaterialApp(
      // Cria uma instância de `MaterialApp` que configura o aplicativo
      title: 'Aplicação Bancária', // Título do aplicativo (não visível na interface do usuário)
      theme: ThemeData(
        // Configura o tema do aplicativo com várias propriedades de estilo
        brightness: Brightness.dark, // Define o brilho do tema como escuro
        primaryColor: const Color(0xFF820AD1), // Define a cor primária (roxa do Nubank)
        scaffoldBackgroundColor: const Color(0xFF121212), // Define a cor de fundo do scaffold (preta)
        appBarTheme: const AppBarTheme(
          // Configura o tema para a `AppBar`
          backgroundColor: Color(0xFF820AD1), // Cor de fundo da `AppBar`
          titleTextStyle: TextStyle(
            // Estilo do texto do título da `AppBar`
            color: Colors.white, // Cor do texto (branco)
            fontSize: 20, // Tamanho da fonte
            fontWeight: FontWeight.bold, // Peso da fonte (negrito)
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          // Define o tema para botões elevados
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF820AD1), // Cor de fundo do botão (roxo)
            foregroundColor: Colors.white, // Cor do texto do botão (branco)
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8), // Borda arredondada com raio de 8 pixels
            ),
            textStyle: const TextStyle(fontSize: 16), // Estilo do texto no botão com tamanho de fonte 16
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          // Configura o tema para os campos de entrada de texto
          filled: true, // Habilita o preenchimento de cor de fundo
          fillColor: const Color(0xFF2C2C2C), // Cor de fundo do campo de entrada
          labelStyle: const TextStyle(color: Colors.white), // Cor do texto do label
          border: OutlineInputBorder(
            // Define a borda do campo de entrada
            borderRadius: BorderRadius.circular(8), // Borda arredondada com raio de 8 pixels
            borderSide: BorderSide.none, // Sem borda visível
          ),
        ),
      ),
      home: const BankingFormScreen(), // Define a tela inicial como `BankingFormScreen`
    );
  }
}

class BankingFormScreen extends StatelessWidget {
  // Define a tela de formulário bancário
  const BankingFormScreen({Key? key}) : super(key: key); // Construtor com uma chave opcional

  @override
  Widget build(BuildContext context) {
    // Método obrigatório `build` que retorna a interface do usuário
    return Scaffold(
      // Cria um `Scaffold` que estrutura a tela básica
      appBar: AppBar(
        // Cria uma `AppBar` com título
        title: const Text('Formulário Bancário'), // Texto do título da `AppBar`
      ),
      body: Padding(
        // Define o corpo da tela com um padding ao redor
        padding: const EdgeInsets.all(16.0), // Define padding de 16 pixels em todos os lados
        child: Column(
          // Usa uma coluna para organizar widgets verticalmente
          children: [
            // Lista de widgets filhos
            TextField(
              // Campo de entrada de texto
              decoration: InputDecoration(
                labelText: 'Nome', // Texto do label para o campo
              ),
            ),
            const SizedBox(height: 16.0), // Espaçamento vertical de 16 pixels
            TextField(
              // Outro campo de entrada de texto
              decoration: InputDecoration(
                labelText: 'Número da Conta', // Texto do label para o campo
              ),
            ),
            const SizedBox(height: 16.0), // Outro espaçamento vertical de 16 pixels
            ElevatedButton(
              // Botão elevado
              onPressed: () {
                // Função de callback executada ao pressionar o botão
                // Aqui você poderia adicionar lógica para submissão do formulário, por exemplo
                print('Formulário Enviado'); // Imprime uma mensagem no console
              },
              child: const Text('Enviar'), // Texto dentro do botão
            ),
          ],
        ),
      ),
    );
  }
}
