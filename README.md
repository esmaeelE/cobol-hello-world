# COBOL Hello World

This is a simple "Hello, World!" program written in [GNU Cobol](https://gnucobol.sourceforge.io/).

## Getting Started

### Prerequisites

Ensure you have [GNU Cobol](https://gnucobol.sourceforge.io/) installed on your system. Refer to [INSTALL-GNUCOBOL.md](INSTALL-GNUCOBOL.md) for installation instructions.

### Compiling and Running the Program

1. Compile the program using `cobc`:

```sh
cobc -x hello-world.cbl -o hello-world
```

1. Run the compiled program:

```sh
./hello-world
```

### Expected Output

```sh
Hello, World!
```

### Use make/docker file

```sh
docker build --no-cache -t cobol-hello .
docker images cobol-hello  # Check size: ~15-25 MB
docker run --rm cobol-hello  # Outputs "Hello, World!" (warning may appear if libxml mismatch persists, but harmless)
```

```sh
make                # Build hello-world
make run            # Build and run locally
make clean          # Remove executable
make docker-run     # Build and run in Docker (your minimal image)
make rebuild        # Clean + rebuild

```

```sh
$ docker run --rm cobol-app:latest 
Warning: program compiled against libxml 212 using older 209
Hello, World!
```

## Repository

[GitHub - cobol-hello-world](https://github.com/luismr/cobol-hello-world)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE.md) file for details.

## Contributions

Feel free to submit issues and pull requests to improve this simple example! 🚀
