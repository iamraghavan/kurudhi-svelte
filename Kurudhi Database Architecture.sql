CREATE TABLE `User` (
  `id` Int PRIMARY KEY AUTO_INCREMENT,
  `full_name` String NOT NULL,
  `gender` String NOT NULL,
  `date_of_birth` Date NOT NULL,
  `phone_number` String UNIQUE NOT NULL,
  `email` String UNIQUE NOT NULL,
  `address` String,
  `pincode` Int,
  `city` String,
  `state` String,
  `country` String,
  `created_at` DateTime NOT NULL DEFAULT (now()),
  `updated_at` DateTime NOT NULL
);

CREATE TABLE `BloodDonor` (
  `id` Int PRIMARY KEY AUTO_INCREMENT,
  `user_id` Int NOT NULL,
  `blood_type` String NOT NULL,
  `rh_factor` String NOT NULL,
  `last_donation_date` Date,
  `medical_conditions` String,
  `medications` String,
  `allergies` String,
  `infectious_diseases` String,
  `travel_history` String,
  `risky_activities` String,
  `tattoos_piercings` String,
  `emergency_contact_name` String,
  `emergency_contact_relation` String,
  `emergency_contact_phone` String,
  `preferred_contact_method` String,
  `contact_frequency` String,
  `donation_location_preference` String,
  `donation_availability` String,
  `motivation_to_donate` String,
  `consent_to_share` Boolean,
  `terms_and_conditions` Boolean,
  `created_at` DateTime NOT NULL DEFAULT (now()),
  `updated_at` DateTime NOT NULL
);

CREATE TABLE `DonorHistory` (
  `id` Int PRIMARY KEY AUTO_INCREMENT,
  `blood_donor_id` Int NOT NULL,
  `donation_date` Date NOT NULL,
  `donation_location` String,
  `blood_type_donated` String,
  `created_at` DateTime NOT NULL DEFAULT (now())
);

ALTER TABLE `BloodDonor` ADD FOREIGN KEY (`user_id`) REFERENCES `User` (`id`);

ALTER TABLE `DonorHistory` ADD FOREIGN KEY (`blood_donor_id`) REFERENCES `BloodDonor` (`id`);
