## Github GraphQL : Flutter Demo APP

Believe it! This repository is like a Rasengan of code that demonstrates how to use the GitHub GraphQL API with Flutter, inspired by the world of Naruto.

![Naruto Gif](https://media.giphy.com/media/2y98KScHKeaQM/giphy.gif)

### Getting Started: Unleash Your Inner Ninja

To embark on this shinobi journey, you'll need to gather the following jutsus (dependencies):

- Flutter
- graphql_flutter

Once you have acquired these jutsus, you can perform the forbidden jutsu by following these steps:

1. Clone the repository like a true shinobi:
   ```shell
   git clone https://github.com/devjenildgohel/github_graphql.git
   ```

2. Navigate to the repository directory like a stealthy ninja:
   ```shell
   cd github_graphql
   ```

3. Open the `lib/utils/api_utils.dart` file and infuse your GitHub personal access token, your chakra, into the `GITHUB_TOKEN` variable. Make sure your token possesses the Sharingan-like permissions to access the GitHub API.

4. Perform the hand seals by running the following command to gather your chakra (install project dependencies):
   ```shell
   flutter pub get
   ```

5. Activate your Sage Mode and execute the following command to start the application:
   ```shell
   flutter run
   ```

### Usage: Channel Your Inner Ninja Spirit

Harnessing the power of GraphQL, you can now wield mighty jutsus to interact with the GitHub API. Once you have channeled your GitHub token in the `api_utils.dart` file, the application will utilize that energy for authentication.

You can now embark on epic missions and query the API using the available jutsus in the project. For instance, to summon a list of all your repositories, perform the following jutsu:

```dart
query {
  viewer {
    repositories(first: 100) {
      nodes {
        name
      }
    }
  }
}
```

![Naruto Jutsu Gif](https://media.giphy.com/media/hiFrkuBweqx9i8aIc7/giphy.gif)

Remember, wield your code jutsus responsibly and refer to the GitHub API documentation to avoid any ninja clashes.

### Contributing: Join Forces with Your Fellow Shinobi

Unite with fellow shinobi! Contributions are as welcome as Jiraiya's stories. If you encounter any bugs or have any suggestions, open an issue or summon a pull request.

### License: Ninja Way

This project follows the Ninja Way and is licensed under the MIT License.

### Additional Information: Ninja Tools and Training

The project harnesses the power of [graphql_flutter](https://pub.dev/packages/graphql_flutter) jutsu to interact with the GitHub API.

For more details, visit the [GitHub repository](https://github.com/devjenildgohel/github_graphql) and embrace the spirit of the Hidden Leaf Village.

![Naruto Run Gif](https://media.giphy.com/media/k7J8aS3xpmhpK/giphy.gif)
