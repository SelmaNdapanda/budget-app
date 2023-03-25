# 📗 Table of Contents

- [📖 About the Project](#[project])
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
  - [🚀 Live Demo](#live-demo)
- [💻 Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Setup](#setup)
  - [Available Scripts](#available-scripts)
- [👥 Authors](#author)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgments)
- [📝 License](#license)


# Budget App


**Budget App** is a web mobile friendly app build using Ruby on Rails framework. This App supports user registration and authentication using the Devise gem. In this App, a user can create his own account on the app and after logging in she/he will be able to add categories and then add transactions under those categories. The app provide some metrics like the total value of transactions under each category.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
  <summary>Client</summary>
  <ul>
    <li>HTML, CSS</li>
    <li>JavaScript</li>
  </ul>
</details>

<details>
  <summary>Server</summary>
  <ul>
    <li>Ruby on Rails</li>
  </ul>
</details>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

### Key Features

- **Register an account**
- **Create categories and transactions**
- **Metrics about user transactions**

## Live Demo 

- [Live Demo Link](https://my-budget-c4p6.onrender.com/)
- [Video Link](https://drive.google.com/file/d/1xZH-2oj15QFBmYgWWWYOuidAq6l38U-v/view)

## Getting Started 

> To get a local copy up and running follow these simple steps.

### Prerequisites

  - <a href="https://www.ruby-lang.org/en/news/2022/11/24/ruby-3-1-3-released/">Ruby</a>
  - <a href="https://rubyonrails.org/">Ruby on Rails</a>
  - <a href="https://www.postgresql.org/">PostgreSQL</a>
  - any code editor

### Setup

To setup the project follow the steps:

1. Clone this project using Git Bash: 
    ``` 
    git clone https://github.com/SelmaNdapanda/budget-app.git
    ```
  
2. Inside the project directory, install the project's dependencies
    ```
    bundle install
    ``` 

3. Create the app's database
    ```
    rails db:create
    ``` 

4. Setup the app's database
    ```
    rails db:setup
    ``` 


### Available Scripts

In the project directory, you can run:

- ```
  rails server
  ```
  Runs the app local server

- ```
  bundle exec rspec
  ```
  Launches the test runner.

## Author

👤 **Selma Hamutenya**

- GitHub: [@SelmaNdapanda](https://github.com/SelmaNdapanda)
- Twitter: [@SellohBlaq](https://twitter.com/sellohBlaq)
- LinkedIn: [selma-hamutenya](www.linkedin.com/in/selma-hamutenya)

## Future Feature

- **Create a user profile**
- **Create a desktop version**

## Contributing 

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## Show your support <a name="support"></a>

If you like this project give it a star!

## Acknowledgments 

- Microverse ❤️ 

- Credit goes to [Gregoire Vella on Behance](https://www.behance.net/gregoirevella) whose original design was used.

## License 

This project is [MIT](./LICENSE) licensed.
