// import 'package:flutter/material.dart';
// import 'package:flutter_application_7/registration_provider.dart';
// import 'package:provider/provider.dart';
// import 'package:web3dart/web3dart.dart';

// class SendEtherForm extends StatefulWidget {
//   @override
//   _SendEtherFormState createState() => _SendEtherFormState();
// }

// class _SendEtherFormState extends State<SendEtherForm> {
//   final _formKey = GlobalKey<FormState>();
//   final _senderController = TextEditingController();
//   final _recipientController = TextEditingController();
//   final _amountController = TextEditingController();
//   EthereumAddress? _sender;
//   EthereumAddress? _recipient;
//   BigInt? _balance;

//   @override
//   void dispose() {
//     _senderController.dispose();
//     _recipientController.dispose();
//     _amountController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final RegistrationProvide = Provider.of<RegistrationProvider>(context);
//     return Form(
//       key: _formKey,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           TextFormField(
//             controller: _senderController,
//             decoration: InputDecoration(
//               labelText: 'Sender',
//             ),
//             validator: (value) {
//               if (value == null || value.isEmpty) {
//                 return 'Sender address is required';
//               }
//               return null;
//             },
//             onEditingComplete: () async {
//               final sender = EthereumAddress.fromHex(_senderController.text);

//               setState(() {
//                 _sender = sender;
//               });
//             },
//           ),
//           TextFormField(
//             controller: _recipientController,
//             decoration: InputDecoration(
//               labelText: 'Recipient',
//             ),
//             validator: (value) {
//               if (value == null || value.isEmpty) {
//                 return 'Recipient address is required';
//               }
//               return null;
//             },
//             onEditingComplete: () {
//               setState(() {
//                 _recipient = EthereumAddress.fromHex(_recipientController.text);
//               });
//             },
//           ),
//           if (_balance != null) Text("fdsfd"),
//           TextFormField(
//             controller: _amountController,
//             decoration: InputDecoration(
//               labelText: 'Amount',
//             ),
//             validator: (value) {
//               if (value == null || value.isEmpty) {
//                 return 'Amount is required';
//               }
//               if (double.tryParse(value) == null) {
//                 return 'Invalid amount';
//               }

//               return null;
//             },
//           ),
//           SizedBox(height: 16),
//           ElevatedButton(
//             onPressed: () async {
//               if (_formKey.currentState?.validate() ?? false) {
//                 RegistrationProvide.sendA(
//                     EthereumAddress.fromHex(_senderController.text),
//                     EthereumAddress.fromHex(_recipientController.text),
//                     BigInt.parse(_amountController.text));
//               }
//             },
//             child: Text('Send Ether'),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class SendEtherPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Send Ether'),
//       ),
//       body: Material(
//         child: SendEtherForm(),
//       ),
//     );
//   }
// }
/*import 'dart:html';

import 'package:flutter/material.dart';
import 'package:http/src/client.dart';
import 'package:web3dart/web3dart.dart';

class SendEtherForm extends StatefulWidget {
  const SendEtherForm({Key? key}) : super(key: key);

  @override
  _SendEtherFormState createState() => _SendEtherFormState();
}

class _SendEtherFormState extends State<SendEtherForm> {
  final _formKey = GlobalKey<FormState>();
  final _destinationAddressController = TextEditingController();
  final _amountController = TextEditingController();
  final _rpcUrl = 'http://localhost:7545'; // replace with your Ganache URL
  late Web3Client _client;

  @override
  void initState() {
    super.initState();
    _client = Web3Client(_rpcUrl, Client());
  }

  @override
  void dispose() {
    _destinationAddressController.dispose();
    _amountController.dispose();
    _client.dispose();
    super.dispose();
  }

  Future<void> _sendTransaction() async {
    final privateKeyHex = 'your-private-key-here';
    final credentials = await _client.credentialsFromPrivateKey(privateKeyHex);
    final toAddressHex = _destinationAddressController.text.trim();
    final amountInWei = EtherAmount.fromUnitAndValue(EtherUnit.ether, double.parse(_amountController.text.trim())).getValueInUnit(EtherUnit.wei).toInt();
    final toAddress = EthereumAddress.fromHex(toAddressHex);
    final gasPrice = await _client.getGasPrice();
    final gasLimit = 21000;
    final transaction = Transaction(
      to: toAddress,
      value: EtherAmount.inWei(BigInt.from(amountInWei)),
      gasPrice: gasPrice,
      maxGas: gasLimit,
    );
    final signedTransaction = await _client.signTransaction(transaction, credentials);
    final transactionHash = await _client.sendTransaction(signedTransaction);
    print('Transaction hash: $transactionHash');
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: _destinationAddressController,
            decoration: InputDecoration(
              labelText: 'Destination Address',
            ),
            validator: (value) {
              if (value?.isEmpty ?? true) {
                return 'Please enter a destination address';
              }
              if (!isValidAddress(value!)) {
                return 'Invalid address';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _amountController,
            decoration: InputDecoration(
              labelText: 'Amount (ETH)',
            ),
            keyboardType: TextInputType.numberWithOptions(decimal: true),
            validator: (value) {
              if (value?.isEmpty ?? true) {
                return 'Please enter an amount';
              }
              if (double.tryParse(value!) == null || double.parse(value) <= 0) {
                return 'Invalid amount';
              }
              return null;
            },
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () async {
              if (_formKey.currentState!.validate()) {
                await _sendTransaction();
              }
            },
            child: Text('Send'),
          ),
        ],
      ),
    );
  }
}
*/
// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart';
// import 'package:web3dart/web3dart.dart';

// class SendEtherScreen extends StatefulWidget {
//   @override
//   _SendEtherScreenState createState() => _SendEtherScreenState();
// }

// class _SendEtherScreenState extends State<SendEtherScreen> {
//   final _formKey = GlobalKey<FormState>();
//   final _addressController = TextEditingController();
//   final _amountController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Send Ether'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               TextFormField(
//                 controller: _addressController,
//                 validator: (value) {
//                   if (value!.isEmpty) {
//                     return 'Please enter a valid Ethereum address';
//                   }
//                   return null;
//                 },
//                 decoration: InputDecoration(
//                   labelText: 'Recipient Address',
//                 ),
//               ),
//               TextFormField(
//                 controller: _amountController,
//                 validator: (value) {
//                   if (value!.isEmpty) {
//                     return 'Please enter an amount';
//                   }
//                   if (double.tryParse(value) == null) {
//                     return 'Please enter a valid amount';
//                   }
//                   return null;
//                 },
//                 decoration: InputDecoration(
//                   labelText: 'Amount',
//                 ),
//               ),
//               SizedBox(height: 16),
//               ElevatedButton(
//                 onPressed: () async {
//                   if (_formKey.currentState!.validate()) {
//                     // Connect to Ethereum network
//                     final client = Web3Client('http://192.168.1.50:7550', Client());

//                     // Load your private key
//                     final credentials = await client.credentialsFromPrivateKey('0x110614fb28d5756f45168d845a4503d780b62d0aa3b1f261becbf6d3ddac6cac');

//                     // Create transaction
//                     final recipient = EthereumAddress.fromHex(_addressController.text);
//                     final amount = EtherAmount.fromUnitAndValue(EtherUnit.ether, BigInt.parse(_amountController.text));

//                     await client.sendTransaction(
//         credentials,
//         Transaction.callContract(
//             contract: contract!,
//             function: _addP!,
//             parameters: [
//               fl,
//               imagehash,
//               nomProduct,
//               quantity,
//               price,
//               description
//             ]));
//                   }
//                 },
//                 child: Text('Send'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:flutter_application_7/registration_provider.dart';
// import 'package:http/http.dart';
// import 'package:provider/provider.dart';
// import 'package:web3dart/web3dart.dart';

// class TransferEtherScreen extends StatefulWidget {
//   @override
//   _TransferEtherScreenState createState() => _TransferEtherScreenState();
// }

// class _TransferEtherScreenState extends State<TransferEtherScreen> {
//   final _formKey = GlobalKey<FormState>();
//   final _fromAddressController = TextEditingController();
//   final _toAddressController = TextEditingController();
//   final _amountController = TextEditingController();
//   final _tpAddressController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     final RegistrationProvide = Provider.of<RegistrationProvider>(context);
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Transfer Ether'),
//         ),
//         body: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Form(
//                 key: _formKey,
//                 child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: <Widget>[
//                       TextFormField(
//                         controller: _tpAddressController,
//                         validator: (value) {
//                           if (value!.isEmpty) {
//                             return 'Please enter a valid Ethereum address';
//                           }
//                           return null;
//                         },
//                         decoration: InputDecoration(
//                           labelText: 'Third part Address',
//                         ),
//                       ),
//                       TextFormField(
//                         controller: _fromAddressController,
//                         validator: (value) {
//                           if (value!.isEmpty) {
//                             return 'Please enter a valid Ethereum address';
//                           }
//                           return null;
//                         },
//                         decoration: InputDecoration(
//                           labelText: 'From Address',
//                         ),
//                       ),
//                       TextFormField(
//                         controller: _toAddressController,
//                         validator: (value) {
//                           if (value!.isEmpty) {
//                             return 'Please enter a valid Ethereum address';
//                           }
//                           return null;
//                         },
//                         decoration: InputDecoration(
//                           labelText: 'To Address',
//                         ),
//                       ),
//                       TextFormField(
//                         controller: _amountController,
//                         validator: (value) {
//                           if (value!.isEmpty) {
//                             return 'Please enter an amount';
//                           }
//                           if (double.tryParse(value) == null) {
//                             return 'Please enter a valid amount';
//                           }
//                           return null;
//                         },
//                         decoration: InputDecoration(
//                           labelText: 'Amount',
//                         ),
//                       ),
//                       SizedBox(height: 16),
//                       ElevatedButton(
//                           onPressed: () async {
//                             RegistrationProvide.transferA(
//                                 EthereumAddress.fromHex(
//                                     _fromAddressController.text),
//                                 EthereumAddress.fromHex(
//                                     _toAddressController.text),
//                                 //BigInt.parse(_amountController.text),

//          BigInt.parse(_amountController.text * EtherAmount.ether.unitValue),
//                                 EthereumAddress.fromHex(
//                                     _tpAddressController.text));
//                             print("the transfer is done");
//                           },
//                           child: Text('Send')),
//                     ]))));
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_application_7/registration_provider.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';
import 'package:web3dart/web3dart.dart';

class TransferEtherScreen extends StatefulWidget {
  @override
  _TransferEtherScreenState createState() => _TransferEtherScreenState();
}

class _TransferEtherScreenState extends State<TransferEtherScreen> {
  final _formKey = GlobalKey<FormState>();
  final _fromAddressController = TextEditingController();
  final _toAddressController = TextEditingController();
  final _amountController = TextEditingController();
  final _tpAddressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final RegistrationProvide = Provider.of<RegistrationProvider>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text('Transfer Ether'),
        ),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
                key: _formKey,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      TextFormField(
                        controller: _tpAddressController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter a valid Ethereum address';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          labelText: 'Third part Address',
                        ),
                      ),
                      TextFormField(
                        controller: _fromAddressController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter a valid Ethereum address';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          labelText: 'From Address',
                        ),
                      ),
                      TextFormField(
                        controller: _toAddressController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter a valid Ethereum address';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          labelText: 'To Address',
                        ),
                      ),
                      TextFormField(
                        controller: _amountController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter an amount';
                          }
                          if (double.tryParse(value) == null) {
                            return 'Please enter a valid amount';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          labelText: 'Amount',
                        ),
                      ),
                      SizedBox(height: 16),
                      ElevatedButton(
                          onPressed: () async {
                            RegistrationProvide.checkBalance();
                            // final etherAmount = EtherAmount.fromUnitAndValue(
                            //     EtherUnit.ether,
                            //     BigInt.parse(_amountController.text));
                            // final weiAmount = etherAmount.getInWei;
                            // RegistrationProvide.transferA(
                            //     EthereumAddress.fromHex(
                            //         _fromAddressController.text),
                            //     EthereumAddress.fromHex(
                            //         _toAddressController.text),
                            //     weiAmount,
                            //     EthereumAddress.fromHex(
                            //         _tpAddressController.text));
                            print("the transfer is done");
                          },
                          child: Text('Send')),
                    ]))));
  }
}
