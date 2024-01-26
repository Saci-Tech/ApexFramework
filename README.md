[![Saci-Tech](https://circleci.com/gh/Saci-Tech/ApexFramework.svg?style=svg)](<LINK>)

# Salesforce's Apex Framework

The goal here is to create a solid structure of Apex classes, using the bare minimum of code, by reusing most of the code, while building specialized classes.

The intent is to produce a set of classes from Models to Exception handling facilities, ensuring that it will work as a solid support for any type of business, be it small or a global corporation.

I will dabble pretty close to Java class hierarchy, but trying to stick the best practices and recommendations for Salesforce's Apex.


## Model classes

This type of class, in this work, is decidedly of the *Virtual* quality, so we can reuse them, by adding later the necessary attributes, constructors and methods, use case-based.

That will help ensure the number of lines of code to review and mantain, in the long run.

### Implementation of the model classes

That occurs whenever we need a wrapper for a specific use case, say, as the basis of encapsulated data in a JSON model.

The ideal way to handle that would be to use a nested class that **EXTEND** the model, then adding the other necessary fields in it's body.

Once that is done, that new class can be used as parameter in a method that references the "primitive" model class, ensuring that other classes exteding the same model can leverage the existing methods.


## RESTful (@RestResource in Salesforce)

This type of class receive an annotation and is seem by Salesforce as an entrypoint for data, in the form of a RESTful API endpoint.

Usually built to handle a large amount of data, can also be to handle smaller sets of data, or even single records.

This is a well documented subject, as data ingestion needs to ensure that the ingested data has a minimum quality (data is also a source of errors of all kinds).

### Implementation of the RESTful endpoints

It is not uncommon to find implementations that have business logic and models intermingled with the methods that said classes should work with (been there, done that).

It is also not always that the time constraints of a project's task allows to avoid that mistake. Usually, one would build a class to handle only the necessary HTTP methods (which, in Salesforce are only five - six, if we consider the @ReadOnly annotation), leaving the unused methods without the proper error and response handling.

In this work, they will act as an entrypoint only, delegating the data deserialization, validation and processing to other classes, known as "Handler"s, which will be discussed in details later on.


## Handler(s), or Business Logic classes (BO in Java)

## Data Access (DAO) classes

## Helper classes (Utility classes)

## Controller classes

## HTTP Requests (RESTful, most of time, but to fetch data!)

## ApexActions classes

## Exception and logging facilities

## Data factory class (mainly for testing)




## Final considerations (*this too, shall change, in due time...*)

With time, I will add some more features, as well as update the code as necessary (mainly between new SF API versions).

At the moment, I'm building a RESTful resource set, that will later be appended with Error handling capabilities.

The next set of classes I want to build are Controllers, be it for the old but still very useful *Visualforce* (both components and pages), or the more flexible Aura Components and Lightning Web Components.

Will add also a way to better handle recursive triggering, Flows ApexActions, and 


For now, the License is the LGPL-2.1, but that may change as necessary - only time will tell which direction this repo will take.