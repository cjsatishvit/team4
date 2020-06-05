CREATE TABLE `member` (
  `name` varchar(45) NOT NULL,
  `customer_id` varchar(45) NOT NULL,
  `loan_amount` varchar(45) NOT NULL,
  `loan_id` varchar(45) NOT NULL,
  `monthly_income` varchar(45) NOT NULL,
  `adress` varchar(45) NOT NULL,
  `reason` varchar(45) NOT NULL,
  `aadhar` varchar(45) NOT NULL,
  `legal_proof` varchar(100) NOT NULL,
  PRIMARY KEY (`loan_id`,`aadhar`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci