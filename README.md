## GitHub GraphQL

This repository contains a sample project that demonstrates how to use the GitHub GraphQL API with Flutter.

### Getting Started

To get started, you will need to install the following dependencies:

- Flutter
- graphql_flutter

Once you have installed the dependencies, you can run the project by following these steps:

1. Clone the repository:
   ```shell
   git clone https://github.com/devjenildgohel/github_graphql.git
   ```

2. Navigate to the repository directory:
   ```shell
   cd github_graphql
   ```

3. Run the following command to install project dependencies:
   ```shell
   flutter pub get
   ```

4. Start the application:
   ```shell
   flutter run
   ```

### Usage

The project includes a simple GraphQL client that you can use to query the GitHub API. To use the client, you will need to provide your GitHub username and password.

Once you have provided your credentials, you can start querying the API. For example, to get a list of all of your repositories, you can use the following query:

```dart
query {
  repositories {
    name
  }
}
```

Please use the code with caution and refer to the GitHub API documentation for more information.

### Contributing

Contributions are welcome! If you find any bugs or have any suggestions, please feel free to open an issue or submit a pull request.

### License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

### Additional Information

The project uses the [graphql_flutter](https://pub.dev/packages/graphql_flutter) package to interact with the GitHub API.

For more details, visit the [GitHub repository](https://github.com/devjenildgohel/github_graphql).
