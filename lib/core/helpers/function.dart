double calculateNewPrice(double price, double offer) {
  return offer == 0 ? price : price - (price * (offer / 100));
}
