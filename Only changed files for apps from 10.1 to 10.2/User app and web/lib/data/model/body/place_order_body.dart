

class PlaceOrderBody {
  List<Cart>? _cart;
  double? _couponDiscountAmount;
  String? _couponDiscountTitle;
  double? _orderAmount;
  String? _orderType;
  int? _deliveryAddressId;
  String? _paymentMethod;
  String? _orderNote;
  String? _couponCode;
  String? _deliveryTime;
  String? _deliveryDate;
  int? _branchId;
  double? _distance;
  String? _transactionReference;
  OfflinePaymentInfo? _paymentInfo;
  String? _isPartial;

  PlaceOrderBody copyWith({String? paymentMethod, String? transactionReference}) {
    _paymentMethod = paymentMethod;
    _transactionReference = transactionReference;
    return this;
  }

  PlaceOrderBody(
      {required List<Cart> cart,
        required double? couponDiscountAmount,
        required String? couponDiscountTitle,
        required String? couponCode,
        required double orderAmount,
        required int? deliveryAddressId,
        required String? orderType,
        required String paymentMethod,
        required int? branchId,
        required String deliveryTime,
        required String deliveryDate,
        required String orderNote,
        required double distance,
        required String isPartial,
        String? transactionReference,
        OfflinePaymentInfo? paymentInfo,
      }) {
    _cart = cart;
    _couponDiscountAmount = couponDiscountAmount;
    _couponDiscountTitle = couponDiscountTitle;
    _orderAmount = orderAmount;
    _orderType = orderType;
    _deliveryAddressId = deliveryAddressId;
    _paymentMethod = paymentMethod;
    _orderNote = orderNote;
    _couponCode = couponCode;
    _deliveryTime = deliveryTime;
    _deliveryDate = deliveryDate;
    _branchId = branchId;
    _distance = distance;
    _transactionReference = transactionReference;
    _paymentInfo = paymentInfo;
    _isPartial = isPartial;
  }

  List<Cart>? get cart => _cart;
  double? get couponDiscountAmount => _couponDiscountAmount;
  String? get couponDiscountTitle => _couponDiscountTitle;
  double? get orderAmount => _orderAmount;
  String? get orderType => _orderType;
  int? get deliveryAddressId => _deliveryAddressId;
  String? get paymentMethod => _paymentMethod;
  String? get orderNote => _orderNote;
  String? get couponCode => _couponCode;
  String? get deliveryTime => _deliveryTime;
  String? get deliveryDate => _deliveryDate;
  int? get branchId => _branchId;
  double? get distance => _distance;
  String? get transactionReference => _transactionReference;
  OfflinePaymentInfo? get paymentInfo => _paymentInfo;
  String? get isPartial => _isPartial;

  PlaceOrderBody.fromJson(Map<String, dynamic> json) {
    if (json['cart'] != null) {
      _cart = [];
      json['cart'].forEach((v) {
        _cart!.add(Cart.fromJson(v));
      });
    }
    _couponDiscountAmount = json['coupon_discount_amount'];
    _couponDiscountTitle = json['coupon_discount_title'];
    _orderAmount = json['order_amount'];
    _orderType = json['order_type'];
    _deliveryAddressId = json['delivery_address_id'];
    _paymentMethod = json['payment_method'];
    _orderNote = json['order_note'];
    _couponCode = json['coupon_code'];
    _deliveryTime = json['delivery_time'];
    _deliveryDate = json['delivery_date'];
    _branchId = json['branch_id'];
    _distance = json['distance'];
    if(json['payment_info'] != null){
      _paymentInfo = json['payment_info'];
    }
    _isPartial = json['is_partial'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (_cart != null) {
      data['cart'] = _cart!.map((v) => v.toJson()).toList();
    }
    data['coupon_discount_amount'] = _couponDiscountAmount;
    data['coupon_discount_title'] = _couponDiscountTitle;
    data['order_amount'] = _orderAmount;
    data['order_type'] = _orderType;
    data['delivery_address_id'] = _deliveryAddressId;
    data['payment_method'] = _paymentMethod;
    data['order_note'] = _orderNote;
    data['coupon_code'] = _couponCode;
    data['delivery_time'] = _deliveryTime;
    data['delivery_date'] = _deliveryDate;
    data['branch_id'] = _branchId;
    data['distance'] = _distance;
    if(_transactionReference != null) {
      data['transaction_reference'] = _transactionReference;
    }
    if(_paymentInfo != null){
      data['payment_info'] = _paymentInfo?.toJson();
    }
    data['is_partial'] = _isPartial;


    return data;
  }
}
