## 01. What is PostgreSQL?
PostgreSQL হলো একটি ওপেন-সোর্স, অবজেক্ট-রিলেশনাল ডাটাবেস ম্যানেজমেন্ট সিস্টেম (ORDBMS), যা SQL ভিত্তিক এবং ACID কমপ্লায়েন্ট। এটি স্কেলেবল এবং একাধিক অ্যাডভান্সড ফিচার সমর্থন করে, যেমন ট্রানজেকশন, ভিউ, স্টোরড প্রোসিডিওর, এবং কাস্টম টাইপ।

## 02. What is the purpose of a database schema in PostgreSQL?
PostgreSQL-এ একটি ডাটাবেস স্কিমা হলো একটি লজিক্যাল গঠন যা টেবিল, ভিউ, ইনডেক্স, ফাংশন, ট্রিগার ইত্যাদি ধারণ করে। এটি ডাটাবেস অবজেক্টগুলোকে গ্রুপ করতে সাহায্য করে এবং ইউজার পারমিশন ম্যানেজমেন্ট সহজ করে।

## 03.Explain the Primary Key and Foreign Key concepts in PostgreSQL.
Primary Key: একটি টেবিলের কলাম বা কলামের সমন্বয়, যা প্রতিটি সারির জন্য ইউনিক আইডেন্টিফায়ার হিসাবে কাজ করে এবং নাল (NULL) হতে পারে না।

Foreign Key: এটি অন্য একটি টেবিলের প্রাইমারি কী-এর রেফারেন্স হিসেবে কাজ করে, যা ডাটার ইন্টিগ্রিটি বজায় রাখে এবং রিলেশনশিপ তৈরি করে।

## 04. What is the difference between the VARCHAR and CHAR data types?
VARCHAR(n): এটি একটি ভেরিয়েবল-লেন্থ স্ট্রিং, যেখানে সর্বোচ্চ n সংখ্যক ক্যারেক্টার থাকতে পারে। স্টোরেজ ব্যবহারের দিক থেকে এটি বেশি ইফিশিয়েন্ট।

CHAR(n): এটি একটি ফিক্সড-লেন্থ স্ট্রিং, যেখানে যদি স্ট্রিং n-এর চেয়ে ছোট হয়, তাহলে অবশিষ্ট জায়গা স্পেস দিয়ে পূরণ করা হয়।

## 05.Explain the purpose of the WHERE clause in a SELECT statement.
WHERE ক্লজ ব্যবহার করা হয় নির্দিষ্ট শর্তের উপর ভিত্তি করে ডাটা ফিল্টার করতে। এটি SELECT, UPDATE, DELETE এবং INSERT কুয়েরিতে প্রয়োগ করা যায়।

## 06. What are the LIMIT and OFFSET clauses used for?
LIMIT: কতগুলো রেকর্ড ফেরত দেওয়া হবে তা নির্দিষ্ট করতে ব্যবহার করা হয়।

OFFSET: নির্দিষ্ট সংখ্যক রেকর্ড স্কিপ করতে সাহায্য করে।

## 07.How can you modify data using UPDATE statements?
UPDATE স্টেটমেন্ট ব্যবহার করে নির্দিষ্ট টেবিলের ডাটা পরিবর্তন করা যায়।

UPDATE employees SET salary = salary + 5000 WHERE department = 'IT';
