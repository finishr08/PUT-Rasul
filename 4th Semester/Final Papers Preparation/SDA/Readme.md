# Class Diagram

### Sarfraz: Train Ticket System

**Classes:**

1. **Ticket**
   - Attributes: ticketID, trainID, passengerID, seatNumber, travelDate, fare
   - Methods: generateTicket(), cancelTicket()
2. **Train**
   - Attributes: trainID, name, route, schedule
   - Methods: getSchedule(), updateSchedule()
3. **Passenger**
   - Attributes: passengerID, name, age, contactInfo
   - Methods: registerPassenger(), updateDetails()
4. **Route**
   - Attributes: routeID, startStation, endStation, intermediateStations
   - Methods: addRoute(), updateRoute()
5. **Reservation**
   - Attributes: reservationID, ticketID, passengerID, status
   - Methods: createReservation(), updateReservation()
6. **Payment**
   - Attributes: paymentID, reservationID, amount, paymentMethod
   - Methods: processPayment(), refundPayment()

**Relationships:**

- **Ticket** <--> **Train** (Many-to-One)
- **Ticket** <--> **Passenger** (Many-to-One)
- **Train** <--> **Route** (One-to-One or Many-to-One)
- **Reservation** <--> **Ticket** (One-to-One)
- **Reservation** <--> **Passenger** (Many-to-One)
- **Payment** <--> **Reservation** (One-to-One)

---

### Mustafa: Weather Forecasting

**Classes:**

1. **WeatherData**
   - Attributes: temperature, humidity, pressure, windSpeed, date, location
   - Methods: fetchData(), updateData()
2. **Forecast**
   - Attributes: forecastID, location, dateRange, predictedWeather
   - Methods: generateForecast(), updateForecast()
3. **Location**
   - Attributes: locationID, name, coordinates
   - Methods: addLocation(), updateLocation()
4. **WeatherStation**
   - Attributes: stationID, location, dataSources
   - Methods: collectData(), transmitData()
5. **User**
   - Attributes: userID, name, email, preferences
   - Methods: registerUser(), updatePreferences()
6. **Notification**
   - Attributes: notificationID, userID, message, timestamp
   - Methods: sendNotification(), scheduleNotification()

**Relationships:**

- **WeatherData** <--> **WeatherStation** (Many-to-One)
- **Forecast** <--> **WeatherData** (Many-to-One)
- **WeatherData** <--> **Location** (Many-to-One)
- **Forecast** <--> **Location** (Many-to-One)
- **Notification** <--> **User** (Many-to-One)
- **Notification** <--> **Forecast** (Many-to-One)

---

### Umer: Airline Seat Reservation

**Classes:**

1. **Flight**
   - Attributes: flightID, airline, route, schedule, aircraft
   - Methods: getFlightDetails(), updateFlightDetails()
2. **Seat**
   - Attributes: seatID, flightID, seatNumber, class, availability
   - Methods: checkAvailability(), reserveSeat()
3. **Passenger**
   - Attributes: passengerID, name, passportNumber, contactInfo
   - Methods: registerPassenger(), updateDetails()
4. **Reservation**
   - Attributes: reservationID, flightID, passengerID, seatID, status
   - Methods: createReservation(), updateReservation(), cancelReservation()
5. **Payment**
   - Attributes: paymentID, reservationID, amount, paymentMethod
   - Methods: processPayment(), refundPayment()
6. **BoardingPass**
   - Attributes: passID, reservationID, flightID, seatNumber, gate
   - Methods: generatePass(), updatePass()

**Relationships:**

- **Flight** <--> **Seat** (One-to-Many)
- **Seat** <--> **Reservation** (One-to-One)
- **Passenger** <--> **Reservation** (Many-to-One)
- **Reservation** <--> **Flight** (Many-to-One)
- **Reservation** <--> **Payment** (One-to-One)
- **BoardingPass** <--> **Reservation** (One-to-One)

---

### Usman: Students Feedback Review System

**Classes:**

1. **Student**
   - Attributes: studentID, name, email, course
   - Methods: registerStudent(), updateDetails()
2. **Course**
   - Attributes: courseID, name, instructor, schedule
   - Methods: addCourse(), updateCourse()
3. **Feedback**
   - Attributes: feedbackID, studentID, courseID, rating, comments, date
   - Methods: submitFeedback(), updateFeedback()
4. **Instructor**
   - Attributes: instructorID, name, email, department
   - Methods: registerInstructor(), updateDetails()
5. **Review**
   - Attributes: reviewID, feedbackID, instructorComments, status
   - Methods: addReview(), updateReview()
6. **Report**
   - Attributes: reportID, courseID, summary, date
   - Methods: generateReport(), updateReport()

**Relationships:**

- **Student** <--> **Feedback** (One-to-Many)
- **Course** <--> **Feedback** (One-to-Many)
- **Instructor** <--> **Course** (One-to-Many)
- **Feedback** <--> **Review** (One-to-One)
- **Report** <--> **Course** (Many-to-One)

---

### Umair: Face Recognition System

**Classes:**

1. **Face**
   - Attributes: faceID, image, features
   - Methods: detectFace(), extractFeatures()
2. **User**
   - Attributes: userID, name, image, features
   - Methods: registerUser(), updateDetails(), verifyIdentity()
3. **Camera**
   - Attributes: cameraID, location, stream
   - Methods: captureImage(), streamVideo()
4. **Recognition**
   - Attributes: recognitionID, faceID, userID, timestamp, location
   - Methods: recognizeFace(), logRecognition()
5. **Database**
   - Attributes: dbID, userData, faceData
   - Methods: storeData(), retrieveData()
6. **Algorithm**
   - Attributes: algorithmID, type, version
   - Methods: trainModel(), updateModel(), matchFeatures()

**Relationships:**

- **Face** <--> **User** (Many-to-One)
- **Camera** <--> **Face** (Many-to-One)
- **Recognition** <--> **Face** (Many-to-One)
- **Recognition** <--> **User** (Many-to-One)
- **Database** <--> **User** (One-to-Many)
- **Database** <--> **Face** (One-to-Many)
- **Algorithm** <--> **Face** (One-to-Many)
- **Algorithm** <--> **Recognition** (Many-to-One)

---

### Amir: Food Delivery Application

**Classes:**

1. **Restaurant**
   - Attributes: restaurantID, name, menu, location, rating
   - Methods: addRestaurant(), updateDetails()
2. **Menu**
   - Attributes: menuID, restaurantID, items
   - Methods: addItem(), updateItem()
3. **Item**
   - Attributes: itemID, name, price, description
   - Methods: updatePrice(), updateDescription()
4. **Order**
   - Attributes: orderID, customerID, restaurantID, items, totalAmount, status
   - Methods: placeOrder(), cancelOrder(), updateOrderStatus()
5. **Customer**
   - Attributes: customerID, name, address, contactInfo
   - Methods: registerCustomer(), updateDetails()
6. **Delivery**
   - Attributes: deliveryID, orderID, deliveryPersonID, status, deliveryTime
   - Methods: assignDelivery(), updateDeliveryStatus()
7. **Payment**
   - Attributes: paymentID, orderID, amount, paymentMethod
   - Methods: processPayment(), refundPayment()

**Relationships:**

- **Restaurant** <--> **Menu** (One-to-One)
- **Menu** <--> **Item** (One-to-Many)
- **Order** <--> **Item** (Many-to-Many)
- **Order** <--> **Customer** (Many-to-One)
- **Order** <--> **Restaurant** (Many-to-One)
- **Delivery** <--> **Order** (One-to-One)
- **Payment** <--> **Order** (One-to-One)

---

### Tayyab: Fingerprint-Based ATM System

**Classes:**

1. **ATM**
   - Attributes: atmID, location, bank
   - Methods: authenticateUser(), dispenseCash()
2. **User**
   - Attributes: userID, name, accountNumber, fingerprintData
   - Methods: registerUser(), updateDetails(), authenticate()
3. **Account**
   - Attributes: accountID, userID, balance, accountType
   - Methods: checkBalance(), updateBalance()
4. **Transaction**
   - Attributes: transactionID, accountID, type, amount, date
   - Methods: createTransaction(), updateTransactionStatus()
5. **Bank**
   - Attributes: bankID, name, branches
   - Methods: addBranch(), updateBranchDetails()
6. **FingerprintScanner**
   - Attributes: scannerID, location
   - Methods: scanFingerprint(), verifyFingerprint()

**Relationships:**

- **ATM** <--> **User** (Many-to-One)
- **User** <--> **Account** (One-to-One)
- **Transaction** <--> **Account** (Many-to-One)
- **ATM** <--> **FingerprintScanner** (One-to-One)

---

### Shaoib: Online Reservation System for Hotel

**Classes:**

1. **Hotel**
   - Attributes: hotelID

, name, location, rooms, amenities

- Methods: addHotel(), updateDetails()

2. **Room**
   - Attributes: roomID, hotelID, type, availability, price
   - Methods: checkAvailability(), updateDetails()
3. **Customer**
   - Attributes: customerID, name, contactInfo, reservations
   - Methods: registerCustomer(), updateDetails()
4. **Reservation**
   - Attributes: reservationID, customerID, hotelID, roomID, checkInDate, checkOutDate, status
   - Methods: createReservation(), updateReservation(), cancelReservation()
5. **Payment**
   - Attributes: paymentID, reservationID, amount, paymentMethod
   - Methods: processPayment(), refundPayment()
6. **Review**
   - Attributes: reviewID, customerID, hotelID, rating, comments, date
   - Methods: submitReview(), updateReview()

**Relationships:**

- **Hotel** <--> **Room** (One-to-Many)
- **Customer** <--> **Reservation** (Many-to-One)
- **Reservation** <--> **Room** (Many-to-One)
- **Reservation** <--> **Hotel** (Many-to-One)
- **Reservation** <--> **Payment** (One-to-One)
- **Review** <--> **Customer** (Many-to-One)
- **Review** <--> **Hotel** (Many-to-One)

---

### Sanaullah: Mobile Attendance System

**Classes:**

1. **User**
   - Attributes: userID, name, role, contactInfo
   - Methods: registerUser(), updateDetails()
2. **Student** (Inherits from User)
   - Attributes: studentID, courseList
   - Methods: enrollInCourse(), markAttendance()
3. **Instructor** (Inherits from User)
   - Attributes: instructorID, courseList
   - Methods: addCourse(), markStudentAttendance()
4. **Course**
   - Attributes: courseID, name, instructorID, schedule, students
   - Methods: addStudent(), removeStudent()
5. **Attendance**
   - Attributes: attendanceID, courseID, studentID, date, status
   - Methods: markPresent(), markAbsent()
6. **Notification**
   - Attributes: notificationID, userID, message, timestamp
   - Methods: sendNotification(), scheduleNotification()
7. **Report**
   - Attributes: reportID, courseID, summary, date
   - Methods: generateReport(), updateReport()
8. **Schedule**
   - Attributes: scheduleID, courseID, classTiming, location
   - Methods: updateSchedule(), getScheduleDetails()

**Relationships:**

- **User** <--> **Student** (Inheritance)
- **User** <--> **Instructor** (Inheritance)
- **Student** <--> **Course** (Many-to-Many)
- **Instructor** <--> **Course** (One-to-Many)
- **Course** <--> **Schedule** (One-to-One)
- **Attendance** <--> **Course** (Many-to-One)
- **Attendance** <--> **Student** (Many-to-One)
- **Notification** <--> **User** (Many-to-One)
- **Report** <--> **Course** (Many-to-One)

# Use Case Diagram

### Sarfraz: Train Ticket System

#### Use Case Diagram:

**Actors**: Passenger, Ticket Agent, System Admin  
**Use Cases**: Book Ticket, Cancel Ticket, View Schedule, Update Schedule, Register Passenger, Process Payment

---

### Mustafa: Weather Forecasting

#### Use Case Diagram:

**Actors**: User, Meteorologist, System Admin  
**Use Cases**: View Weather Data, Generate Forecast, Update Forecast, Add Location, Send Notification

---

### Umer: Airline Seat Reservation

#### Use Case Diagram:

**Actors**: Passenger, Airline Staff, System Admin  
**Use Cases**: Book Flight, Cancel Reservation, Check Seat Availability, Process Payment, Generate Boarding Pass

---

### Usman: Students Feedback Review System

#### Use Case Diagram:

**Actors**: Student, Instructor, System Admin  
**Use Cases**: Submit Feedback, Review Feedback, Generate Report, Add Course, Update Course

---

### Umair: Face Recognition System

#### Use Case Diagram:

**Actors**: User, Security Staff, System Admin  
**Use Cases**: Register User, Update User, Capture Image, Recognize Face, Log Recognition

---

### Amir: Food Delivery Application

#### Use Case Diagram:

**Actors**: Customer, Restaurant Staff, Delivery Person, System Admin  
**Use Cases**: Place Order, Cancel Order, Update Order Status, Assign Delivery, Process Payment, Submit Review

---

### Tayyab: Fingerprint-Based ATM System

#### Use Case Diagram:

**Actors**: User, Bank Staff, System Admin  
**Use Cases**: Authenticate User, Dispense Cash, Check Balance, Update Balance, Register User

---

### Shaoib: Online Reservation System for Hotel

#### Use Case Diagram:

**Actors**: Customer, Hotel Staff, System Admin  
**Use Cases**: Book Room, Cancel Reservation, Check Room Availability, Process Payment, Submit Review

---

### Sanaullah: Mobile Attendance System

#### Use Case Diagram:

**Actors**: Student, Instructor, System Admin  
**Use Cases**: Mark Attendance, Check Attendance, Generate Report, Send Notification, Update Schedule
