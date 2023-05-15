
import 'package:flutter_application_7/Data/product.dart';

import 'customer.dart';
import 'supplier.dart';

class EstimateStatus {
  final String title;

  EstimateStatus({required this.title});
}
EstimateStatus approved = EstimateStatus(title: 'Approved');
EstimateStatus pending = EstimateStatus(title: 'Pending');
EstimateStatus notapproved = EstimateStatus(title: 'Not Approved');
class CustomerStatus {
  final String title;

 CustomerStatus({required this.title});
}
CustomerStatus waiting = CustomerStatus(title: 'Waiting');//waiting for supplier's acceptance
CustomerStatus accepted = CustomerStatus(title: 'Accepted');
CustomerStatus pendingestimate = CustomerStatus(title: 'Not Accepted Yet');
CustomerStatus cancelled = CustomerStatus(title: 'Cancelled');
class Estimate {
  final EstimateInfo info;
  final Supplier supplier;
  final Customer customer;
  final List<EstimateItem> items;

  const Estimate({
    required this.info,
    required this.supplier,
    required this.customer,
    required this.items,
  });
}

class EstimateInfo {
  final String number;
  final DateTime date;
  final EstimateStatus status; //accepted not accpeted from the supplier
  final CustomerStatus customerstatus; //accepted/not accepted from the customer

  const EstimateInfo({
    required this.number,
    required this.date,
    required this.status,
    required this.customerstatus,
  });
}

class EstimateItem {
  final Product estimateProduct;
  final int quantity;
  final double unitPrice;

  const EstimateItem({
    required this.estimateProduct,
    required this.quantity,
    required this.unitPrice,
  });
}
