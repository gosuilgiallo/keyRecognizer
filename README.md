# Key Recognizer in Prolog #

This project is a key recognition system written in Prolog, capable of identifying the musical key (major or minor) of a song based on 2, 3, or 4 input chords. It uses the theoretical framework of Western tonal music to match the input chords against predefined keys, such as C Major or A Minor.
### Features ### 

  - **Input flexibility**: Accepts up to 4 chords, which can be major, minor, or diminished.
  - **Extensive key database**: Includes all 24 major and minor keys, with support for accidentals like sharps (_sharp) and flats.
  - **Quick lookup**: Finds all possible keys matching the given chords.
  - **Educational value**: Demonstrates the use of Prolog's logical reasoning for solving problems in music theory.

## How it works ##

  **Input Format**: Chords are provided in a list. Chords follow these conventions:
        - **Major chords**: c, g, a_sharp, etc.
        - **Minor chords**: c_minor, g_minor, a_sharp_minor, etc.
        - **Diminished chords**: b_dim, f_sharp_dim, etc.

  **Logic**: The system checks if the input chords are a subset of the chords in each predefined key. If a match is found, the corresponding key is returned.

  **Output**: The recognized key(s) are displayed as Prolog atoms, e.g., c_major or a_minor.

### Use case example ###

Suppose you input the following chords:

```
  find_key([c_sharp, g_sharp, a_sharp_minor], Key).
```

The system will output:
```
Key = c_sharp_major ;
Key = a_sharp_minor ;
false.
```

This indicates the song could be in C# Major or A# Minor.
## Why is this project useful? ##

This project has several practical applications:

   -  **Music Analysis**: Helps musicians and composers quickly determine the key of a song from a chord progression.
   -  **Education**: Offers an accessible introduction to music theory concepts like keys, scales, and chord structures.
   -  **Prolog Learning**: Serves as a hands-on example of using Prolog's subset matching and logical inference for a real-world problem.

### Theoretical background ###

The project is grounded in tonal music theory, which defines a key as a collection of chords and notes centered around a root note. Each key has its unique combination of:

  - Major, minor, and diminished **chords**.
  - **Functional harmony**: Tonic, dominant, and subdominant relationships.

By leveraging these principles, the system can accurately recognize keys based on the chords provided.
## Skills and concepts involved ##
Contributes to this project will be appreciated, you can improve these aspects of your knowedge:

  - **Prolog Programming**:
      - Use of facts to define keys and their chords.
      - Application of rules to implement logical reasoning.
      - Mastery of Prolog's subset/2 predicate.

  - **Music Theory**:
      - Understanding of scales, keys, and their chord progressions.
      - Recognition of relationships between major and minor keys (e.g., relative minors).

  - **Problem Solving**:
      - Mapping a music theory problem to a computational logic model.

## How to run the Project ##

  Install a Prolog interpreter, such as SWI-Prolog.
  Load the program file:
```
?- consult('key_recognizer.pl').
```

Test the system with your chords:
```
?- find_key([c, g, f_minor], Key).
```
### _What are the potential future enhancements?_ ###

 - Add support for flat chords (e.g., a_flat, b_flat_minor).
 - Implement a graphical interface to visualize the chords and recognized keys.
 - Expand the system to work with melodies, not just chords.

### Acknowledgments ###

This project combines the beauty of music theory with the power of logical programming. It serves as a bridge between artistic intuition and computational precision, offering an educational and practical tool for both musicians and programmers.
