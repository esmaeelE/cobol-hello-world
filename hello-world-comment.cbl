      ******************************************************************
      * Program: Hello World                                           *
      * Author:  Your Name                                             *
      * Purpose: Simple demonstration program that displays a message  *
      * Language: COBOL (free-format source)                           *
      * Compiler: GnuCOBOL (cobc)                                      *
      ******************************************************************

       IDENTIFICATION DIVISION.
      * The Identification Division provides basic information about the program.
      * It is required and contains metadata like program name and author.

       PROGRAM-ID. HELLO-WORLD.
      * Defines the name of the program. This is how the program is identified
      * when compiled with 'cobc -x' (executable).

      ******************************************************************

       ENVIRONMENT DIVISION.
      * This division specifies the environment in which the program runs.
      * It includes configuration for input/output, files, etc.
      * In this simple program, no special environment settings are needed,
      * so the division is present but empty.

      ******************************************************************

       DATA DIVISION.
      * The Data Division is used to declare variables, file structures,
      * working storage, and other data items.
      * This program has no data requirements, so it remains empty.

      ******************************************************************

       PROCEDURE DIVISION.
      * The Procedure Division contains the executable logic of the program.
      * This is where the actual instructions (paragraphs and statements) are written.

       MAIN-PARAGRAPH.
      * Optional paragraph name for clarity and structure.
      * You can name paragraphs and PERFORM them if needed.

           DISPLAY "Hello, World!".
      * Outputs the text "Hello, World!" to the standard output (console/terminal).
      * No newline is automatically added unless UPON CONSOLE is specified,
      * but GnuCOBOL typically handles it appropriately.

           STOP RUN.
      * Terminates the program and returns control to the operating system.
      * Essential for proper program exit. Returns exit code 0 (success).

      ******************************************************************
      * End of program                                                 *
      ******************************************************************
