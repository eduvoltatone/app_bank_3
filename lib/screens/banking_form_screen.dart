import 'package:flutter/material.dart';
import '../widgets/transaction_list.dart';

class BankingFormScreen extends StatefulWidget {
  const BankingFormScreen({Key? key}) : super(key: key);

  @override
  _BankingFormScreenState createState() => _BankingFormScreenState();
}

class _BankingFormScreenState extends State<BankingFormScreen> {
  final _formKey = GlobalKey<FormState>();
  String? _name;
  String? _accountNumber;

  final List<Map<String, String>> _transactions = [
    {'date': '01/09/2024', 'description': 'Depósito', 'amount': 'R\$ 1000'},
    {'date': '02/09/2024', 'description': 'Transferência', 'amount': 'R\$ 250'},
    {'date': '03/09/2024', 'description': 'Pagamento', 'amount': 'R\$ 300'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aplicação Bancária'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(labelText: 'Nome'),
                    style: const TextStyle(color: Colors.white),
                    onSaved: (value) {
                      _name = value;
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor, insira seu nome';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    decoration:
                        const InputDecoration(labelText: 'Número da Conta'),
                    style: const TextStyle(color: Colors.white),
                    onSaved: (value) {
                      _accountNumber = value;
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor, insira o número da conta';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState?.validate() ?? false) {
                        _formKey.currentState?.save();
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text('Dados salvos com sucesso!')),
                        );
                      }
                    },
                    child: const Text('Salvar'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: TransactionList(transactions: _transactions),
            ),
          ],
        ),
      ),
    );
  }
}
