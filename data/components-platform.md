---
description: Компоненты платформы — Desktop, Server, Studio, Integrator, Adapter.
---

# Platform Components

The Megaladata analytical platform can be operated in the server mode for the team work and in the desktop application mode for the personal analytics. Composition of components depends on the [platform edition](compare-editions.md).

## Desktop

The platform component designated for the autonomous data processing on the personal computer. It can process large data volumes restricted only by the working station resources.

Megaladata Desktop does not contain tools for team work, differentiation of rights and publication of web services.

System requirements for [OS Windows](https://help.loginom.ru/adminguide/desktop/) and [OS Linux](https://help.loginom.ru/adminguide/desktop/linux/).

## Server

The analytical server, completes the loading, calculation, model training, visualisation, right management and other tasks. Megaladata Server is a key platform element required for the team work. Megaladata Server is designated for deployment in the internal network when there is more than one user working from different working places.

Megaladata Studio is required for server control, configuration, visualisation and other operations. Other platform components, with the exception of the Desktop component, can interact with Megaladata Server.

The basic delivery of all server and cloud editions includes Megaladata Server and minimum 5 competitive licenses for the users with "Workflows design" or "View reports" roles. To execute workflows by means of scheduled start or calling of the web services published with Integrator, no additional user licences are required. The basic server delivery is sufficient.

System requirements for [OS Linux](https://help.loginom.ru/adminguide/linux/server/), for [OS Windows](https://help.loginom.ru/adminguide/windows/server/).

## Studio

The client web application designated for processing workflows design, data visualisation, server configuration, control of user rights.

Studio is the main working place of analyst and end user that implements user interface of the platform operation. Megaladata Server provides data processing.

List of supported browsers can be found at the following [link](https://help.loginom.ru/adminguide/studio/).

## Integrator

The platform component that enables to publish own web services that implement the logics developed in the Megaladata Server workflows. Megaladata Integrator provides an opportunity to implement the architecture that secures failure safety, load balancing and scaling out.

System requirements for [OS Linux](https://help.loginom.ru/adminguide/linux/integrator/), for [OS Windows](https://help.loginom.ru/adminguide/windows/integrator/).

## Adapter

It is an optional platform component that provides integration of Megaladata Server with non-standard web services, for example, with credit reference bureau.

Megaladata Adapter enables to perform complex transformations to bring XML request to its standard type that can be processed by other Megaladata platform components.

System requirements for [OS Windows](https://help.loginom.ru/adminguide/adapter/).
