# Drawbacks of using OpenBoxes:
While open-source software is free to download and use, there are several costs and drawbacks that should be taken
into consideration before you begin the adoption process.

## System Administration
An OpenBoxes installation requires a system administrator to install, monitor, maintain, and upgrade the software
  and server components throughout the software lifecycle. These tasks require competent IT personnel.

## Time
While OpenBoxes has been streamlined considerably since its creation, there may be significant time
costs associated with using this inventory management system. Examples of potentially time-intensive tasks include:

*  Creating products to track within the system
*  Data entry associated with recording/adjusting inventory

## Training 
While OpenBoxes is a relatively simple inventory management tool, some training is appropriate to
allow users to successfully utilize all of the functionality offered by the system.

## Hospital-Centric
While OpenBoxes could be used by small-to-medium-sized enterprises (SME) in most industries, there are some 
limitations that might make it difficult to use:

1) OpenBoxes does not have a Sales Order feature yet. There's not an overwhelming need for such a feature within
the hospital. For now, you can create a new location to represent a customer, generate a PO
for that location (customer) against your facility depot, and fulfill that PO in order to approximate a Sales Order.
This feature will eventually be implemented as pharmacists would like to generate a sales order when filling a 
prescription for a patient.
      
2) The Requisition feature (similar to Tranfer Orders) which is used to move stock from a facility depot to a 
point-of-service (e.g. ward, pharmacy) is primarily used within the depot. In other words, Requisitions are 
created by a warehouse manager within the hospital depot (instead of the requesting party, a nurse or pharmacist).
This was a decision made in order to save time and avoid the need for adding time-intensive processes for nurses 
and pharmacists. In the use case at Mirebalis Hospital, nurses and pharmacists will send a paper requisitions to the hospital depot, 
warehouse staff will enter the requisition into the system and proceed to fulfill that requisition. OpenBoxes will 
eventually have a point-of-service (POS) client for nurses and pharmacists to request stock from the depot, but that 
feature is not currently in development.
    
## Static Role-based Authorization
The OpenBoxes authorization mechanism currently only provides three roles (Admin, Manager, and Browser). This limits the 
ability for an administrator to create roles based on fine-grained permissions. For example, all Manager users have 
the ability to perform CRUD actions (create, retrieve, update, delete) on most objects within the system. However, I cannot 
create a new role (e.g. Shift Manager) that allows a user to create a Product, but not a Purchase Order. A more 
fine-grained approach will be implemented in a future version of OpenBoxes.
