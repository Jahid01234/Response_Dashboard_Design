
// 1st:- Model for Recent Activity.........
class RecentActivity {
  final String icon;
  final String label;
  final String amount;
  final String status;

  RecentActivity({
    required this.icon,
    required this.label,
    required this.amount,
    required this.status,
  });
}

List<RecentActivity> recentActivities = [
  RecentActivity(
      icon: 'assets/images/water_bill.svg',
      label: 'Water Bill',
      amount: "\$120",
      status: "Successfully",
  ),
  RecentActivity(
    icon: 'assets/images/salary.svg',
    label: 'Income Salary',
    amount: "\$4500",
    status: "Received",
  ),
  RecentActivity(
      icon: 'assets/images/current.svg',
      label: 'Electric Bill',
      amount: "\$150",
      status: "Successfully",
  ),
  RecentActivity(
      icon: 'assets/images/wifi.svg',
      label: 'Internet Bill',
      amount: "\$60",
      status: "Successfully",
  ),
];



// 2nd:- Model for Upcoming Payment.............
class UpcomingPayment {
  final String icon;
  final String label;
  final String amount;
  final String status;

  UpcomingPayment({
    required this.icon,
    required this.label,
    required this.amount,
    required this.status,
  });
}

List<UpcomingPayment> upcomingPayments = [
  UpcomingPayment(
      icon: 'assets/images/home.svg',
      label: 'Home Rent',
      amount: "\$1500",
      status: "Pending",
  ),
  UpcomingPayment(
      icon: 'assets/images/salary.svg',
      label: 'Car Insurance',
      amount: "\$150",
      status: "Pending",
  ),
];



//  3rd:- Model for Transaction History...............
class TransactionHistory {
  final String avatar;
  final String label;
  final String amount;
  final String time;
  final String status;

  TransactionHistory({
    required this.avatar,
    required this.label,
    required this.amount,
    required this.time,
    required this.status,
  });
}

List<TransactionHistory> transactionHistory = [
  TransactionHistory(
    avatar: 'assets/images/man_pic1.jpg',
    label: 'Car Insurance',
    amount: "\$350",
    time: "10:42:23 AM",
    status: "Completed",
  ),
  TransactionHistory(
    avatar: 'assets/images/man_pic2.jpg',
    label: 'Loan',
    amount: "\$120",
    time: "12:42:00 PM",
    status: "Completed",
  ),
  TransactionHistory(
    avatar: 'assets/images/man_pic3.jpg',
    label: 'Online Payment',
    amount: "\$154",
    time: "10:42:23 PM",
    status: "Completed",
  ),
];


// 4th:- Model for Info Card Model...............
class InfoCardModel {
  final String icon;
  final String label;
  final String amount;

  InfoCardModel({
    required this.icon,
    required this.label,
    required this.amount,
  });
}

final List<InfoCardModel> infoCardData = [
  InfoCardModel(
    icon: 'assets/images/credit-card.svg',
    label: 'Transfer via \nCard number',
    amount: '\$1200',
  ),
  InfoCardModel(
    icon: 'assets/images/transfer.svg',
    label: 'Transfer via \nOnline Banks',
    amount: '\$150',
  ),
  InfoCardModel(
    icon: 'assets/images/bank.svg',
    label: 'Transfer \nSame Bank',
    amount: '\$1500',
  ),
  InfoCardModel(
    icon: 'assets/images/doc.svg',
    label: 'Transfer to \nOther Bank',
    amount: '\$1500',
  ),
];


// 5th:- Menu icon...............
const menuIcons = [
  'assets/images/home.svg',
  'assets/images/pie-chart.svg',
  'assets/images/clipboard.svg',
  'assets/images/credit-card.svg',
  'assets/images/trophy.svg',
  'assets/images/invoice.svg',
];