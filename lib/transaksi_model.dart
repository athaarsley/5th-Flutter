class TransaksiModel {
  String invoice;
  String date;
  String name;
  String itemCount;
  String amount;

  TransaksiModel({
    this.invoice = '',
    this.date = '',
    this.name = '',
    this.itemCount = '',
    this.amount = ''
  });
}

final List<TransaksiModel> mountItems = [
  TransaksiModel(
      invoice:'INV-07-2042-0333',
      name: 'Raden Gabriel Dio Mahatama Siregar',
      date:'2024',
      itemCount: 'umum',
      amount: '3'),
  TransaksiModel(
      invoice:'INV-07-2042-0333',
      name: 'Raden Gabriel Dio Mahatama Siregar',
      date:'2024',
      itemCount: 'umum',
      amount: '1'),
  TransaksiModel(
      invoice:'INV-07-2042-0333',
      name: 'Raden Gabriel Dio Mahatama Siregar',
      date:'2024',
      itemCount: 'umum',
      amount: '1'),
  TransaksiModel(
      invoice:'INV-07-2042-0333',
      name: 'Raden Gabriel Dio Mahatama Siregar',
      date:'2024',
      itemCount: 'umum',
      amount: '1'),
  TransaksiModel(
      invoice:'INV-07-2042-0333',
      name: 'Mocahmmad levyan terry nurfachri mahatam sihombing',
      date:'2024',
      itemCount: 'umum',
      amount: '5'),
];