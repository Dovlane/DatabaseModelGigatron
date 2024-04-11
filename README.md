[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-24ddc0f5d75046c5622901739e7c5dd533143b0c8e959d652212380cedb1ea36.svg)](https://classroom.github.com/a/CWiPXU-P)

# Database Model Gigatron

## About
This project was project on faculty (RAF). The idea was to demonstrate our knowledge in data modeling. Colleague and I have modelled a data model with 20 entities how Gigatron, the largest technological chain of markets in Serbia. 

## Specification
Gigatron is a chain of retail stores specializing in computer equipment, offering customers the convenience of online shopping. Each customer, to qualify for a product warranty, must be registered in the database. This requirement also applies to online purchases. Therefore, we record each customer's first and last name, phone number, and email address, and assign them a unique ID.

The database also maintains records of employees, including their ID, the store they work in, names, email addresses, and phone numbers. The database categorizes employees as store managers, drivers, and salespeople, with store managers supervising drivers and salespeople. Each driver is assigned to only one vehicle, though a vehicle may be driven by multiple drivers. Vehicle details such as ID, name, and size are recorded; vehicles are classified as small, medium, or large.

Stores are identified by their unique ID, name, address, and phone number. Products are cataloged with details including ID, price, category, barcode, brand, and description. Brand information includes the name, ID, and a description. Each category is identified by an ID and name.

Customers can add products to their online shopping cart, which can be filled and emptied. The creation date and time of the cart are tracked. A customer can manage multiple carts at once, and carts that are emptied are removed from the database. A cart converted into a purchase order is retained in the database.

Purchase records include the purchase ID, date and time, total amount, invoice number, and payment method, which can be either cash or card. Purchases are distinguished between online orders and in-store purchases. Online orders record the delivery driver's details, the customer's address, and the delivery date and time, whereas in-store purchases record the salesperson involved.

Products may have discount or warranty information. Discounts are defined by the discount percentage, start date, and end date. Warranties include the duration and optionally, terms of the warranty, along with the start and possible cancellation dates of the warranty agreement.

Inventory items are linked to their store and product, including a unique inventory number. Information on whether an item is part of a shopping cart or was purchased in-store is stored. If purchased, the warranty expiration date is recorded if applicable.

Customers can lodge complaints about items within the warranty period. Complaints include details of the associated purchase, complaint date, description, and status—categorized as rejected, open, or closed. The nature of the complaint (e.g., defect or incorrect delivery) and specifics about the product are noted. Open complaints require assignment to a service provider for resolution, whose details are recorded in the system.

In addition to complaints, customers can submit product reviews, including the product details, review date and time, and a rating scale from 1 to 10.

**Tema: Gigatron** 

Vladimir Ignjatijević RN 2022/7 <br />
Vladimir Mićunović RN 2023/
