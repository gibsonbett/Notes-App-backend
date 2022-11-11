# NOTES APP

### By Gibson Bett, Cynthia Ontiri, Rhoda Gachimu, Isir Malak, Milton Kihara and David Gitonga

## Table of Content

+ [Description](#description)
+ [Introduction](#introduction)
+ [Requirements](#requirements)
+ [License](#license)
+ [Authors Info](#author-Info)

## Description

<p>Build a web Notes app with Sinatra and Active Record to support a React frontend</p>


## Introduction
The focus of this project is **building a Sinatra API backend** that uses
**Active Record** to access and persist data in a database, which will be used
by a separate **React frontend** that interacts with the database via the API.

## Requirements

For this project, we will:

- Use Active Record to interact with a database.
- Have at least two models with a one-to-many relationship.
- At a minimum, set up the following API routes in Sinatra:
  - create and read actions for both models
  - full CRUD capability for one of the models
- Build a separate React frontend application that interacts with the API to
  perform CRUD actions.
- Implement proper front end state management. We will be updating state using a
  setState function after receiving your response from a POST, PATCH, or DELETE 
  request. We will NOT be relying on a GET request to update state. 
- Use good OO design patterns. We will have separate classes for each of our
  models, and create instance and class methods as necessary. 
- Routes in our application (both client side and back end) should follow RESTful
  conventions.
- Use our back end optimally. Pass JSON for related associations to the front 
  end from the back end. We will use active record methods in our controller to grab the needed data from our database and provide as JSON to the front end. We will NOT be relying on filtering front end state or a separate fetch request to
  retrieve related data.

In this application,we will build a notes application with a React frontend interface and a Sinatra backend API, where a user can:

- **Create** a new note
- **Read** a list of all notes
- **Update** individual notes
- **Delete** notes

A `Note` can be tagged with a `Category`, so that each note _belongs to_ a
category and each category _has many_ notes.

## License

MIT License

Copyright (c) 2022 Gibson Bett, Cynthia Ontiri, Rhoda Gachimu, Isir Malak, Milton Kihara and David Gitonga.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

## Authors-info
gibson.bett@student.moringaschool.com
rhoda.gachimu@student.moringaschool.com
cynthia.ontiri@student.moringaschool.com
david.gitonga@student.moringaschool.com
john.kihara@student.moringaschool.com
isir.malak@student.moringaschool.com


