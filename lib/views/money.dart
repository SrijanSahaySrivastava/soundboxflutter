import 'package:flutter/material.dart';
import 'package:soundbox2/widget/constants.dart';

class Money extends StatefulWidget {
  static const String iD = 'money_screen';
  final String walletAddress;
  const Money({
    Key? key,
    required this.walletAddress,
  }) : super(key: key);

  @override
  State<Money> createState() => _MoneyState();
}

class _MoneyState extends State<Money> {
  TextEditingController amountController = TextEditingController();
  String selectedCurrency = "USD"; // Initialize with a default currency

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Transfer Money"),
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pop(context), // Use clear arrow_back_ios
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          elevation: 8.0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        flex: 3, // Give more space to the amount field
                        child: TextField(
                          controller: amountController,
                          keyboardType: const TextInputType.numberWithOptions(
                              decimal: true),
                          onChanged: (value) {
                            //Do something with the user input.
                          },
                          decoration: ktextFieldDecoration.copyWith(
                            labelText: "Enter Amount",
                            hintText: "0.00",
                          ),
                        ),
                        00),
                    const SizedBox(width: 10.0),
                    Expanded(
                      flex: 1, // Adjust width as needed
                      child: DropdownButtonFormField<String>(
                        value: selectedCurrency,
                        icon: const Icon(Icons.keyboard_arrow_down),
                        items: currencies.map((String currency) {
                          return DropdownMenuItem<String>(
                            value: currency,
                            child: Text(currency),
                          );
                        }).toList(),
                        onChanged: (value) =>
                            setState(() => selectedCurrency = value!),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  // TODO: Handle transfer logic with selected currency

                  // ... your code here ...
                  final amount = double.parse(amountController.text);
                  print(amount);
                  print(selectedCurrency);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content:
                          Text("Transferring $amount $selectedCurrency..."),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text("Transfer"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
