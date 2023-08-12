# BeFinanceFit ![Rails](https://rubyonrails.org/assets/images/logo.svg)

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Live Demo](#live-demo)
    - [Key Features](#key-features)
  - [Entity Relationship Diagram](#entity-relationship-diagram)
- [💻 Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Setup](#setup)
  - [Install](#install)
  - [Database](#database)
  - [Usage](#usage)
  - [Run tests](#run-tests)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [📝 License](#license)

# 📖 BeFinanceFit <a name="about-project"></a>

**BeFinanceFit** is a mobile web application where you can manage your budget: you have a list of transactions associated with a category so that you can see how much money you spent and on what.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
  <summary>Client</summary>
  <ul>
    <li><a href="https://rubyonrails.org/">Rails</a></li>
  </ul>
</details>
<details>
  <summary>Server</summary>
  <ul>
    <li><a href="https://rubyonrails.org/">Rails</a></li>
  </ul>
  </details>
  <details>
  <summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

### Links <a name="Links"></a>

[Live Demo](https://app-render-x29z.onrender.com)
- Original design idea by [Gregoire Vella on Behance](https://www.behance.net/gallery/19759151/Snapscan-iOs-design-and-branding?tracking_source=)

### Key Features <a name="key-features"></a>

- Register and log in.
- Introduce new transactions associated with a category.
- See the money spent on each category.

## Entity Relationship Diagram <a name="entity-relationship-diagram"></a>

![](./erd_diagram.png)

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running follow these simple example steps.

### Prerequisites

In order to run this project you need:

- [Ruby](https://www.ruby-lang.org/en/) installed and running
- [Rails](https://rubyonrails.org/) installed and running
- [PostgreSQL](https://www.postgresql.org/) installed and running

### Setup

Clone this repository to your desired folder:

```
git clone https://github.com/vvoo21/BeFinanceFit.git
cd BeFinanceFit
code .
```

### Install

Install the project dependencies, execute the following command in Bash:

```sh  
  bundle install
```

### Database

Create the database, execute the following command in Bash:

```sh
rails db:create
rails db:migrate
```

### Usage

To run the project, execute the following command in Bash:  

```sh
  rails server
```

### Run Tests

To run the project tests, execute the following command: 

```sh
 rspec spec
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 👥 Authors <a name="authors"></a>

👤 **Vanessa Oliveros Padron**

- GitHub: [@vvoo21](https://github.com/vvoo21)
- Twitter: [@vaneoliverosp](https://twitter.com/vaneoliverosp)
- LinkedIn: [vaneoliverosp](https://www.linkedin.com/in/vaneoliverosp/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🔭 Future Features <a name="future-features"></a>

- Add desktop design for the webapp.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## ⭐️ Show your support <a name="support"></a>

Give a start if you like this project!

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🙏 Acknowledgments <a name="acknowledgements"></a>

- I would like to thank the Microverse program!
- This is a style solution  to the [Snapscan - iOs design and branding by Gregoire Vella](https://www.behance.net/gallery/19759151/Snapscan-iOs-design-and-branding?tracking_source=)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
