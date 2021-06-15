CREATE TABLE Product_Category (
	id varchar(255) PRIMARY KEY,
	name varchar(255)
);

CREATE TABLE Product(
	id varchar(255) PRIMARY KEY,
	name varchar(255) NOT NULL,
	category_id varchar(255) NOT NULL,
	CONSTRAINT fk_category_id FOREIGN KEY (category_id) REFERENCES Product_Category(id)
);

CREATE TABLE Product_Details(
	product_id varchar(255) NOT NULL,
	color varchar(255),
	description varchar(2500),
	CONSTRAINT fk_product_id FOREIGN KEY (product_id) REFERENCES Product(id),
	CONSTRAINT UNIQUE_product_details UNIQUE (product_id, color, description) 
);

CREATE TABLE Product_Channel (
	product_id varchar(255) NOT NULL,
	channel varchar(50) NOT NULL,
	CONSTRAINT fk_product_id_channel FOREIGN KEY (product_id) REFERENCES Product(id),
	CONSTRAINT unique_prodid_channel UNIQUE (product_id, channel)
);

INSERT INTO product_category (id, name) VALUES (sys_guid(), 'books');
INSERT INTO product_category (id, name) VALUES (sys_guid(), 'clothes');
INSERT INTO product_category (id, name) VALUES (sys_guid(), 'electronics');

INSERT INTO product(id, name, category_id) VALUES (sys_guid(), 'Implementing Domain Driven Design - Vaughn Vernon', 'C4154006B2A832A2E053020011ACDB52');
INSERT INTO product(id, name, category_id) VALUES (sys_guid(), 'Kafka: The Definitive Guide: Real-Time Data and Stream Processing at Scale - Gwen Shapira, Neha Narkhede, and Todd Palino', 'C4154006B2A832A2E053020011ACDB52');
INSERT INTO product(id, name, category_id) VALUES (sys_guid(), 'Enterprise Integration Patterns - Gregor Hohpe', 'C4154006B2A832A2E053020011ACDB52');
INSERT INTO product(id, name, category_id) VALUES (sys_guid(), 'Kafka Streams in Action - William P. Bejeck Jr.', 'C4154006B2A832A2E053020011ACDB52');

INSERT INTO product(id, name, category_id) VALUES (sys_guid(), 'Domain Driven Design T-Shirt', 'C4154006B2A932A2E053020011ACDB52');
INSERT INTO product(id, name, category_id) VALUES (sys_guid(), 'Domain Driven Design Hoodie', 'C4154006B2A932A2E053020011ACDB52');
INSERT INTO product(id, name, category_id) VALUES (sys_guid(), 'Kafka T-Shirt', 'C4154006B2A932A2E053020011ACDB52');
INSERT INTO product(id, name, category_id) VALUES (sys_guid(), 'Kafka Hoodie', 'C4154006B2A932A2E053020011ACDB52');
INSERT INTO product(id, name, category_id) VALUES (sys_guid(), 'Kafka Socks', 'C4154006B2A932A2E053020011ACDB52');

INSERT INTO product(id, name, category_id) VALUES (sys_guid(), 'Domain Driven Design Cap', 'C4154006B2A932A2E053020011ACDB52');

INSERT INTO product_details(product_id, description) 
VALUES ('C4154006B2AC32A2E053020011ACDB52', 
'Implementing Domain-Driven Design presents a top-down approach to understanding domain-driven design (DDD) in a way that fluently connects strategic patterns to fundamental tactical programming tools. Vaughn Vernon couples guided approaches to implementation with modern architectures, highlighting the importance and value of focusing on the business domain while balancing technical considerations. Building on Eric Evans’ seminal book, Domain-Driven Design, the author presents practical DDD techniques through examples from familiar domains. Each principle is backed up by realistic Java examples–all applicable to C# developers–and all content is tied together by a single case study: the delivery of a large-scale Scrum-based SaaS system for a multitenant environment. The author takes you far beyond “DDD-lite” approaches that embrace DDD solely as a technical toolset, and shows you how to fully leverage DDD’s “strategic design patterns” using Bounded Context, Context Maps, and the Ubiquitous Language. Using these techniques and examples, you can reduce time to market and improve quality, as you build software that is more flexible, more scalable, and more tightly aligned to business goals.');

INSERT INTO product_details(product_id, description) 
VALUES ('C4154006B2AD32A2E053020011ACDB52', 
'Every enterprise application creates data, whether it’s log messages, metrics, user activity, outgoing messages, or something else. And how to move all of this data becomes nearly as important as the data itself. If you’re an application architect, developer, or production engineer new to Apache Kafka, this practical guide shows you how to use this open source streaming platform to handle real-time data feeds.

Engineers from Confluent and LinkedIn who are responsible for developing Kafka explain how to deploy production Kafka clusters, write reliable event-driven microservices, and build scalable stream-processing applications with this platform. Through detailed examples, you’ll learn Kafka’s design principles, reliability guarantees, key APIs, and architecture details, including the replication protocol, the controller, and the storage layer.

Understand publish-subscribe messaging and how it fits in the big data ecosystem.
Explore Kafka producers and consumers for writing and reading messages
Understand Kafka patterns and use-case requirements to ensure reliable data delivery
Get best practices for building data pipelines and applications with Kafka
Manage Kafka in production, and learn to perform monitoring, tuning, and maintenance tasks
Learn the most critical metrics among Kafka’s operational measurements
Explore how Kafka’s stream delivery capabilities make it a perfect source for stream processing systems');

INSERT INTO product_details(product_id, description) 
VALUES ('C4154006B2AE32A2E053020011ACDB52', 
'Enterprise Integration Patterns provides an invaluable catalog of sixty-five patterns, with real-world solutions that demonstrate the formidable of messaging and help you to design effective messaging solutions for your enterprise.
The authors also include examples covering a variety of different integration technologies, such as JMS, MSMQ, TIBCO ActiveEnterprise, Microsoft BizTalk, SOAP, and XSL. A case study describing a bond trading system illustrates the patterns in practice, and the book offers a look at emerging standards, as well as insights into what the future of enterprise integration might hold.
This book provides a consistent vocabulary and visual notation framework to describe large-scale integration solutions across many technologies. It also explores in detail the advantages and limitations of asynchronous messaging architectures. The authors present practical advice on designing code that connects an application to a messaging system, and provide extensive information to help you determine when to send a message, how to route it to the proper destination, and how to monitor the health of a messaging system. If you want to know how to manage, monitor, and maintain a messaging system once it is in use, get this book.');

INSERT INTO product_details(product_id, description) 
VALUES ('C4154006B2AF32A2E053020011ACDB52', 
'Kafka Streams in Action teaches you to implement stream processing within the Kafka platform. In this easy-to-follow book, you will explore real-world examples to collect, transform, and aggregate data, work with multiple processors, and handle real-time events. You will even dive into streaming SQL with KSQL! Practical to the very end, it finishes with testing and operational aspects, such as monitoring and debugging.');

ALTER TABLE product ADD Last_Modified_at timestamp;

INSERT INTO product_details(product_id, color, description) VALUES ('C4154006B2B032A2E053020011ACDB52', 'Red', 'A red DDD T-Shirt');
INSERT INTO product_details(product_id, color, description) VALUES ('C4154006B2B032A2E053020011ACDB52', 'Blue', 'A blue DDD T-Shirt');

INSERT INTO product_details(product_id, color, description) VALUES ('C4154006B2B132A2E053020011ACDB52', 'Red', 'A red DDD hoodie');
INSERT INTO product_details(product_id, color, description) VALUES ('C4154006B2B132A2E053020011ACDB52', 'Blue', 'A blue DDD hoodie');

INSERT INTO product_details(product_id, color, description) VALUES ('C4154006B2B232A2E053020011ACDB52', 'Purple', 'A purple Kafka T-Shirt');

INSERT INTO product_details(product_id, color, description) VALUES ('C4154006B2B332A2E053020011ACDB52', 'Purple', 'A purple Kafka hoodie');

INSERT INTO product_details(product_id, color, description) VALUES ('C4154006B2B432A2E053020011ACDB52', 'Purple', 'A purple Kafka socks');
INSERT INTO product_details(product_id, color, description) VALUES ('C4154006B2B432A2E053020011ACDB52', 'Blue', 'A purple Kafka socks');

INSERT INTO product_channel(product_id, channel) VALUES ('C4154006B2B132A2E053020011ACDB52', 'online');
INSERT INTO product_channel(product_id, channel) VALUES ('C4154006B2B132A2E053020011ACDB52', 'shop');

create table AGGREGATE_INVALIDATIONS
(
  name        VARCHAR2(255),
  id          varchar2(255),
  occurred_at TIMESTAMP(6),
  source      VARCHAR2(255)
);

CREATE OR REPLACE VIEW "PRODUCT_AGGREGATE_VW" 
	("Key", "EventId", "AggregateId", "AggregateType", "EventType", "PayloadType", "Payload", "LastModifiedDate"
	) AS
  		select 
  			p.id AS "Key", 
  			RAWTOHEX(SYS_GUID()) AS "EventId", 
  			p.id as "AggregateId", 
  			'Products' as "AggregateTye", 
  			ai.name as "EventType", 
  			'application/xml' as "PayloadType",
			(SELECT xmlelement("Product", 
					XMLFOREST(
						p.id "ID",
						p.name "Name",
						pcat.name "CategoryName",
						nvl(pdet.color, 'N/A') "Color",
						pdet.description "Description"
						,
						(SELECT xmlagg(xmlelement("ChannelType", pch.channel) ORDER BY pch.CHANNEL) AS channel FROM product p3 INNER JOIN product_channel pch ON p3.id = pch.product_id WHERE p3.id = p.id) "Channel")
					).getclobval()
					FROM product p2, PRODUCT_CATEGORY pcat, PRODUCT_DETAILS pdet
					WHERE p2.id = p.id AND p2.CATEGORY_ID = pcat.id AND p2.id = pdet.PRODUCT_ID) AS "Payload",
			ai.occurred_at as "LastModifiedDate"
from product p, aggregate_invalidations ai where ai.id = p.id;

CREATE OR REPLACE TRIGGER product_update_trg
    AFTER 
    UPDATE
    ON product
    FOR EACH ROW    
BEGIN
   -- insert a row into the audit table   
   INSERT INTO AGGREGATE_INVALIDATIONS (name, id, occurred_at, source)
   VALUES('ProductUpdated', :NEW.id, systimestamp, 'Product');
END;

CREATE OR REPLACE TRIGGER product_insert_trg
    AFTER 
    INSERT
    ON product
    FOR EACH ROW    
BEGIN
   -- insert a row into the audit table   
   INSERT INTO AGGREGATE_INVALIDATIONS (name, id, occurred_at, source)
   VALUES('ProductInserted', :NEW.id, systimestamp, 'Product');
END;

