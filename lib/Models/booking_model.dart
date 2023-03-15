class Booking {
  int id;
  String order_id,
      status,
      consignment,
      quantity,
      date,
      vehicle_assigned,
      reg_no;
  bool vehicle_status;

  Booking(this.id, this.order_id, this.status, this.date, this.consignment,
      this.quantity, this.reg_no, this.vehicle_assigned, this.vehicle_status);
}
