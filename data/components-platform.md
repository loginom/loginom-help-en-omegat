---
description: Компоненты платформы — Desktop, Server, Studio, Integrator, Adapter.
---

# Platform Components

The Megaladata analytical platform can be operated as a server edition for team work and as a desktop application for personal analytics. Composition of components depends on the [platform edition](compare-editions.md).

## Desktop

The platform component designated for autonomous data processing on a personal computer. It can process large data arrays restricted only by the working station resources.

Megaladata Desktop does not contain tools for team work, differentiation of rights and publication of web services.

System requirements for [OS Windows](https://help.loginom.ru/adminguide/desktop/) and [OS Linux](https://help.loginom.ru/adminguide/desktop/linux/).

## Server

An analytics server that performs the loading, calculation, model training, visualization, right management and other tasks. Megaladata Server is a key platform element required for team work. Megaladata Server is designated for deployment in the internal network when there is more than one user working from different working places.

Megaladata Studio is required for server control, configuration, visualization and other operations. Other platform components, with the exception of the Desktop component, can interact with Megaladata Server.

The basic delivery of all server and cloud editions includes Megaladata Server and minimum 5 competitive licenses for the users with the "Workflows design" or "View reports" roles. To execute workflows by means of scheduled start or calling of the web services published with Integrator, no additional user licences are required. The basic server delivery is sufficient.

System requirements for [OS Linux](https://help.loginom.ru/adminguide/linux/server/), for [OS Windows](https://help.loginom.ru/adminguide/windows/server/).

## Studio

The client web application designated for processing workflows design, data visualization, server configuration, control of user rights.

Studio is the main working place of the analyst and the end user that implements user interface of the platform operation. Megaladata Server provides data processing.

The list of supported browsers can be found at the following [link](https://help.loginom.ru/adminguide/studio/).

## Integrator

The platform component that enables to publish your own web services that implement the logics developed in the Megaladata Server workflows. Megaladata Integrator provides an opportunity to implement the architecture that secures failure safety, load balancing and scaling out.

System requirements for [OS Linux](https://help.loginom.ru/adminguide/linux/integrator/), for [OS Windows](https://help.loginom.ru/adminguide/windows/integrator/).

## Adapter

It is an optional platform component that provides integration of Megaladata Server with non-standard web services, for example, with credit reference bureau.

Megaladata Adapter enables to perform complex transformations to bring an XML request to its standard type that can be processed by other Megaladata platform components.

System requirements for [OS Windows](https://help.loginom.ru/adminguide/adapter/).
