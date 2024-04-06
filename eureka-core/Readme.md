## To build the fat jar for jersey3 run ``` gradlew builld ```.

## If you want to configure fat jars for other libraries make sure to add this to the build.gradle.

```
jar {
    from {
        configurations.compile.collect { it.isDirectory() ? it : zipTree(it) }
    }
}
```

## Why use a fat jar?
### Fat jars are only needed if you have external dependencies that need to be included in the jar.