# A Template For All C Projects of 42

## Overview

This project simplifies the development process in C by automating the management of function prototypes and object file compilation using a Makefile and helper scripts. It ensures that your header files are correctly updated without manual intervention, improving efficiency and reducing errors.

## Features

- **Automatic Prototype Management**: Automatically searches for function prototypes in your source files and updates your header file accordingly.
- **Reduced Effort**: Eliminates the need for manual modifications to the Makefile or remembering which prototypes are included in your headers.
- **Error Minimization**: Helps prevent common errors related to prototype declarations in your code by ensuring they are consistently managed.

## Getting Started

### Installation

1. **Clone the Repository**: Clone the repository to your local machine.
   ```bash
   git clone https://github.com/oguzharunb/ft_template
   cd ft_template
   ```

2. **Set Up the Project**: Create your source files in the `srcs` directory and prepare your header file `prototype.h`.

3. **Set Up the Makefile**: Change NAME to your programs name, change HEADER to your headers name.

### Usage

- **Setting prototype.h**: just enter the libraries like stdio.h or unistd.h:
   ```c
    #ifndef PROTOTYPE_H // change to your header
    # define PROTOTYPE_H // change to your header
    # include <stddef.h> // add libraries as you like

    //prototypes -> dont touch here script will automatically fill this place

    #endif
   ```
- **How It Works**:
    It modifies your Makefile based on your source files.
    If you add or remove a source file, Makefile will automatically be updated.
    Not just that! It creates a header file (can modify the name in Makefile, HEADER variable).
    Place all your functions in header (excluding main and static functions).

- **Building the Project**: Simply run the Makefile to compile the project:
   ```bash
   make
   ```

- **Cleaning Up**: Use the following commands to clean up object files or remove the compiled binary:
   ```bash
   make clean  # Remove object files
   make fclean # Remove object files and the binary
   make re     # Clean and rebuild the project
   ```

## File Structure

```
.
├── Makefile
├── header.h
├── prototype.h
├── srcs
│   ├── file1.c
│   ├── file2.c
│   └── ...
├── scrape_fnames.sh
└── set_prototypes.sh
```

## Example Source File

Here's an example of how your source file might look:

```c
#include "header.h"

// Example function
int example_function(int param);
```

## License

This project is licensed under the Apache License. See the LICENSE file for more details.

## Contributing

Contributions are welcome! Please feel free to open issues or submit pull requests.
