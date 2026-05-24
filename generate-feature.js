import fs from "fs";
import path from "path";

const featureName = process.argv[2];

if (!featureName) {
  console.log("Please provide feature name");
  process.exit(1);
}

const basePath = path.join("lib", "src", "features", featureName);

const folders = [
  "data",
  "data/data_sources",
  "data/entities",
  "data/repository",
  "presentation",
  "presentation/view_models",
  "presentation/widgets"
];

folders.forEach((folder) => {
  fs.mkdirSync(path.join(basePath, folder), {
    recursive: true
  });
});

const createFile = (filePath, content = "") => {
  fs.writeFileSync(filePath, content);
};

const pascalCase = (text) =>
  text
    .split("_")
    .map(
      (word) =>
        word.charAt(0).toUpperCase() + word.slice(1)
    )
    .join("");

const className = pascalCase(featureName);

//
// DATA SOURCE
//

createFile(
  path.join(
    basePath,
    "data/data_sources",
    `${featureName}_data_source.dart`
  ),
`abstract class ${className}DataSource {

}
`
);

createFile(
  path.join(
    basePath,
    "data/data_sources",
    `${featureName}_data_source_impl.dart`
  ),
`import '${featureName}_data_source.dart';

class ${className}DataSourceImpl
    implements ${className}DataSource {

}
`
);

createFile(
  path.join(
    basePath,
    "data/data_sources",
    "index.dart"
  ),
`export '${featureName}_data_source.dart';
export '${featureName}_data_source_impl.dart';
`
);

//
// REPOSITORY
//

createFile(
  path.join(
    basePath,
    "data/repository",
    `${featureName}_repository.dart`
  ),
`abstract class ${className}Repository {

}
`
);

createFile(
  path.join(
    basePath,
    "data/repository",
    `${featureName}_repository_impl.dart`
  ),
`import '${featureName}_repository.dart';

class ${className}RepositoryImpl
    implements ${className}Repository {

}
`
);

createFile(
  path.join(
    basePath,
    "data/repository",
    "index.dart"
  ),
`export '${featureName}_repository.dart';
export '${featureName}_repository_impl.dart';
`
);

//
// ENTITIES
//

createFile(
  path.join(
    basePath,
    "data/entities",
    "index.dart"
  ),
``
);

//
// VIEW MODELS
//

createFile(
  path.join(
    basePath,
    "presentation/view_models",
    "index.dart"
  ),
``
);

//
// WIDGETS
//

createFile(
  path.join(
    basePath,
    "presentation/widgets",
    "index.dart"
  ),
``
);

//
// DATA INDEX
//

createFile(
  path.join(
    basePath,
    "data",
    "index.dart"
  ),
`export 'data_sources/index.dart';
export 'entities/index.dart';
export 'repository/index.dart';
`
);

//
// PRESENTATION INDEX
//

createFile(
  path.join(
    basePath,
    "presentation",
    "index.dart"
  ),
`export 'view_models/index.dart';
export 'widgets/index.dart';
`
);

//
// FEATURE INDEX
//

createFile(
  path.join(
    basePath,
    "index.dart"
  ),
`export 'data/index.dart';
export 'presentation/index.dart';
`
);

console.log(
  `✅ Feature "${featureName}" generated successfully`
);