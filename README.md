# UI Component Library

## Overview

This repository contains a UI Component Library designed for creating and managing reusable UI components. It aims to streamline the development process by providing a set of consistent and customizable components.

## Requirements

- Docker
- Docker Compose (optional but recommended for ease of use)

## Getting Started

### Prerequisites

Before you begin, ensure you have the following software installed:

- [Node.js](https://nodejs.org/) (v14 or later)
- [npm](https://www.npmjs.com/) (comes with Node.js)

### Installation

1. **Clone the Repository:**

   ```bash
   git clone <repository-url>
   cd varsani_hemal_ui_garden_build_checks

2. **Install Dependencies:**
``` bash
npm install
```

## Running the project
To start the development server and view the project in your browser, run:
``` bash
 npm start
```

### Build the Docker Image

Run the following command to build the Docker image:

```bash
docker build -t lastName_firstName_coding_assignment13 .
```

### Run the Docker Container

Start the Docker container with the following command:

```bash
docker run -d -p 8018:8018 --name lastName_firstName_coding_assignment13 lastName_firstName_coding_assignment13

```

### Access the Application

Open your web browser and navigate to:

http://localhost:8018


### Proving Functionality
To ensure that the linting and formatting tools are working correctly, follow these steps:

A test.txt file is present in the directory copy the content inside it and paste it inside the test.js file and try commiting the change made, an error should pop up then try using a valid script of your choice and recommit the file and this should go through without any issues.



### Summary

1. **Dockerfile:** Builds and serves the React app using Nginx on port 8018.
2. **README.md:** Provides instructions on building and running the Docker container, including accessing the app and troubleshooting.

Replace `lastName_firstName` with your actual last and first names in both the Dockerfile and README.md. This setup will ensure that you meet all the requirements and provide clear instructions for running the application.
