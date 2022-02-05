part of core;

const bool isDarkTheme = false;
const kAPIBaseUrl = 'http://ec2-13-126-90-253.ap-south-1.compute.amazonaws.com:4000/';
const kDefaultCornerRadiusValue = 5.0;
const kLargeCornerRadiusValue = 10.0;
const kMaxDefaultCornerRadiusValue = 20.0;
const kDefaultPaddingValue = 20.0;
const kSmallestPaddingValue = 5.0;
const kMinPaddingValue = 10.0;
const kMaxPaddingValue = 30.0;
const kDefaultPhotoSize = 50.0;
const kDefaultPadding = const EdgeInsets.all(kDefaultPaddingValue);
const kSmallestDefaultPadding = const EdgeInsets.all(kSmallestPaddingValue);
const kMinDefaultPadding = const EdgeInsets.all(kMinPaddingValue);
const kMaxDefaultPadding = const EdgeInsets.all(kMaxPaddingValue);
const kDefaultHorizontalPadding = const EdgeInsets.symmetric(horizontal: kDefaultPaddingValue);

const kDefaultMarginValue = 20.0;
const kSmallestMarginValue = 5.0;
const kMinMarginValue = 10.0;
const kMaxMarginValue = 30.0;
const kDefaultMargin = const EdgeInsets.all(kDefaultMarginValue);
const kSmallestDefaultMargin = const EdgeInsets.all(kSmallestMarginValue);
const kMinDefaultMargin = const EdgeInsets.all(kMinMarginValue);
const kMaxDefaultMargin = const EdgeInsets.all(kMaxMarginValue);
const kDefaultHorizontalMargin = const EdgeInsets.symmetric(horizontal: kDefaultMarginValue);

const kOTPLength = 6;
const kMaxPhoneNumberLength = 10;
const kResendOTPDuration = 30;

const kEmptyBox = SizedBox(
  height: 0,
  width: 0,
);

const kDefaultVerticalSpace = SizedBox(
  height: 10,
  width: 0,
);

const kDefaultHorizontalSpace = SizedBox(
  height: 0,
  width: 10,
);

const kLargeHorizontalSpace = SizedBox(
  height: 0,
  width: 20,
);

const kMediumHorizontalSpace = SizedBox(
  height: 0,
  width: 15,
);

const kSmallestHorizontalSpace = SizedBox(
  height: 0,
  width: 5,
);

const kSmallestVerticalSpace = SizedBox(
  height: 5,
  width: 0,
);

const kLargeVerticalSpace = SizedBox(
  height: 20,
  width: 0,
);

const kStateList = [
  "Andhra Pradesh",
  "Arunachal Pradesh",
  "Assam",
  "Bihar",
  "Chhattisgarh",
  "Goa",
  "Gujarat",
  "Haryana",
  "Himachal Pradesh",
  "Jammu and Kashmir",
  "Jharkhand",
  "Karnataka",
  "Kerala",
  "Madhya Pradesh",
  "Maharashtra",
  "Manipur",
  "Meghalaya",
  "Mizoram",
  "Nagaland",
  "Odisha",
  "Punjab",
  "Rajasthan",
  "Sikkim",
  "Tamil Nadu",
  "Telangana",
  "Tripura",
  "Uttarakhand",
  "Uttar Pradesh",
  "West Bengal",
  "Andaman and Nicobar Islands",
  "Chandigarh",
  "Dadra and Nagar Haveli",
  "Daman and Diu",
  "Delhi",
  "Lakshadweep",
  "Puducherry"
];

const kDistrictList = [
  'Adilabad',
  'Anantapur',
  'Chittoor',
  'Kakinada',
  'Guntur',
  'Hyderabad',
  'Karimnagar',
  'Khammam',
  'Krishna',
  'Kurnool',
  'Mahbubnagar',
  'Medak',
  'Nalgonda',
  'Nizamabad',
  'Ongole',
  'Hyderabad',
  'Srikakulam',
  'Nellore',
  'Visakhapatnam',
  'Vizianagaram',
  'Warangal',
  'Eluru',
  'Kadapa',
  'Anjaw',
  'Changlang',
  'East Siang',
  'Kurung Kumey',
  'Lohit',
  'Lower Dibang Valley',
  'Lower Subansiri',
  'Papum Pare',
  'Tawang',
  'Tirap',
  'Dibang Valley',
  'Upper Siang',
  'Upper Subansiri',
  'West Kameng',
  'West Siang',
  'Bagalkot',
  'Bangalore Rural',
  'Bangalore Urban',
  'Belgaum',
  'Bellary',
  'Bidar',
  'Bijapur',
  'Chamarajnagar',
  'Chikkamagaluru',
  'Chikkaballapur',
  'Chitradurga',
  'Davanagere',
  'Dharwad',
  'Dakshina Kannada',
  'Gadag',
  'Gulbarga',
  'Hassan',
  'Haveri district',
  'Kodagu',
  'Kolar',
  'Koppal',
  'Mandya',
  'Mysore',
  'Raichur',
  'Shimoga',
  'Tumkur',
  'Udupi',
  'Uttara Kannada',
  'Ramanagara',
  'Yadgir',
  'Ahmednagar',
  'Akola',
  'Amravati',
  'Aurangabad',
  'Bhandara',
  'Beed',
  'Buldhana',
  'Chandrapur',
  'Dhule',
  'Gadchiroli',
  'Gondia',
  'Hingoli',
  'Jalgaon',
  'Jalna',
  'Kolhapur',
  'Latur',
  'Mumbai City',
  'Mumbai suburban',
  'Nandurbar',
  'Nanded',
  'Nagpur',
  'Nashik',
  'Osmanabad',
  'Parbhani',
  'Pune',
  'Raigad',
  'Ratnagiri',
  'Sindhudurg',
  'Sangli',
  'Solapur',
  'Satara',
  'Thane',
  'Wardha',
  'Washim',
  'Yavatmal',
];
