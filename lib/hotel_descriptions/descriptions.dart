import 'package:flutter/material.dart';

String description_hotel_sea_crown = 'Situated on the beachfront and offering a 24-hour front desk, Hotel Sea Crown is located just 1.5 km from the famous Sugandha Beach. Free WiFi access is available.Each air-conditioned room here will provide you with a seating area and work desk. Featuring a shower, private bathroom comes with free toiletries.At Hotel Sea Crown you will find a garden. Other facilities offered at the property include a shared lounge, a tour desk and luggage storage. The property offers free parking.The property is located just 3 km from the scenic Laboni Beach and 4.1 km from Buddhist Temple and the popular Coxs Bazar. The Coxs Bazar Airport and Coxs Bazar Bus Station are located within 4.8 km.The guests can enjoy their meals at the in-house restaurant and refreshing alcoholic and non-alcoholic beverages at the bar. Room service is available for 24-hour.Couples particularly like the location — they rated it 9.4 for a two-person trip.';

GestureDetector Terms(String title, String description) {
  return GestureDetector(
    child: Container(
      width: double.infinity,
      child: Card(
        child: Wrap(
          children: <Widget>[
            ListTile(
              title: Text(title,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
            ),
            Container(
                margin : EdgeInsets.symmetric(horizontal: 15),
                child: Text(description))
            ,

          ],
        ),
      ),
    ),
  );
}

GestureDetector Terms1() {
  return Terms("Terms and Condition", TnC1);

}
GestureDetector Terms2() {
  return Terms('General Disclaimer', TnC2);
}
GestureDetector Terms3() {
  return Terms('Booking Terms',TnC3);
}
GestureDetector Terms4() {
  return Terms('Promotion Terms',TnC4);
}
GestureDetector Terms6() {
  return Terms('Cancellation & Refund',TnC6);
}
GestureDetector Terms5() {
  return Terms('Payment Terms',TnC5);
}

String TnC1 = "Please carefully read the terms and conditions before using any of the services provided by SHELTA. By using any materials, information, products or services of SHELTA, you agree to these terms and conditions. SHELTA holds the right to change or modify these terms and conditions at any time for any reason, without prior notice. Your continued use of the website and its services means you have accepted the modified terms and conditions. Please review the terms periodically to ensure you are up to date regarding the terms and conditions.";

String TnC2 = "SHELTA does not own any travel products. We are simply the bridge which connects the travelers with the travel service providers like airlines, hotels, tour operators etc. The accuracy, completeness, and correctness of the inventory-related information displayed on the Site remain the sole responsibility of each provider. Changes in market conditions or circumstances may occur on short notice which may make information displayed on the Site inaccurate or outdated.";

//String TnC2_1 = "If something should go wrong during booking or travel period, SHELTA will act as a point of contact and will use its commercially reasonable efforts to assist the customer. SHELTA will always follow the standard policies of travel providers (Airlines, Hotel, Tour Operator etc.).";

String TnC3 = "f you make a booking through our website for travel products, that booking is made with the travel provider named on the booking page and our website only acts as a user interface. Travelers must understand and agree to the terms and conditions of the travel providers (Airlines, Hotels, Tour Operators etc.) before booking or purchasing their products through SHELTA . If any traveler faces any issue or dispute regarding any of the bookings, SHELTA will act as a point of contact and will use its commercially reasonable efforts to assist the customer.";

String TnC4 = "SHELTA generates promotion codes/discounts from time to time which may be availed on the site.SHELTA reserves the right to add, alter, modify, withdraw all or any of the Terms and Conditions or replace, wholly or in part, the program by any other program, whether similar to this program or not or withdraw it altogether without any prior notice.In case of dispute with any party, SHELTA decision will be binding and final.When you register with SHELTA , we or any of our partners/affiliate/group companies may contact you from time to time to provide the offers/information of such products/services that we believe may benefit you.";

String TnC5 = "By making a payment using this site, you agree to the use of your personal details for verification and validation of your transactions to ensure no one else is using your credentials without your consent. You must also acknowledge that the details you provide us may be disclosed to third party credit card payment gateway agencies for verification. Your personal details will not be used for any other purposes except to verify and confirm your identity.";

String TnC6 = "SHELTA will follow supplier’s (Airlines/ Properties/ Bus/ Tour operator etc.) policy for cancellation/ re-issue.For Domestic flight/ hotel/ bus/ tour, SHELTA will not charge any additional service fee.For International flights, SHELTA will charge BDT 300 as a standard service fee.In case of refund/ reissue, customers must confirm SHELTA 48 hours prior to travel date.For Hotel, Domestic flight, Bus & Tour, refunded amount may reflect in your account within 3 to 7 working days depending on your bank.For International Flight, refund process (If applicable) may take up to 3 weeks depending on the airline and your bank.For any kind of refund, service charge and convenience fee are non-refundable.* In case of national emergency/ lockdown/ political unrest/ natural disaster etc., standard refund policy may not be applicable.";

