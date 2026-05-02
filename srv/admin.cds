/* In line 5 of the service definition, cds defination is imported from domain model created under db folder. 
Path starting ../ imports all definitions with namespace prefix com.sap.learning from db/schema.cds file. 
The local alias db is set for the imported definitions.*/

using com.sap.learning as db from '../db/schema';

/**
 Lines 11 to 14 contain a service block that define service interface called AdminService as a collection of 
 exposed entities. This service is intended for administrators to manage authors and books within an application.
 @path is annotation

Exposed Entities
Standard view definitions, using as select from or as projection on, can be used for exposing entities.
Line 21 declares an entity called Books within the AdminService. 
This is a projection, i.e. it is a view on Books entity defined in the imported domain model declared in db folder.
lly Line 22, declares an entity called Authors entity is declared as a projection on the Authors entity from domain model.
 */

service AdminService @(path: '/admin') {
    entity Books   as projection on db.Books;
    entity Authors as projection on db.Authors;
}

/* Note -
By default, endpoint of an exposed service is constructed based on its name, following some conventions  
If you want to override the default path or make it explicit, you can add the @path annotation as in the example. 
There, @path annotation specifies URL path under which this service will be accessible, namely /admin. */
