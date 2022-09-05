# Flappy Bird Game
### It's a Cloning of Flappy Bird game using Flutter (Bloc State Management Library) with Egyptian touch.
![applogo2](https://user-images.githubusercontent.com/58918060/188484031-128a1a7a-198f-412d-84c4-794f80fd4bcc.png)
# Game Idea
### The game is based on an equation linking gravity, volacity and time, the equation can be analyzed as follows:
![image](https://user-images.githubusercontent.com/58918060/188485587-1a7a15ab-7c8b-412f-b816-87c4f6afebef.png)

Everything depends on gravity as well as jumping. As we can see in the graph, there is a relationship between height(y) and time(t), and that represents a jump, but of course with an external influence, which is gravity(g), taking into account the mass of the body(m).

**This make:**

**y '' = -m.g**

let's say m = 1 g or kg so we have:

**y '' = -g** by integration according to time we get:

**y ' = -gt + v** as v is the constant of integration is the volacity

by integrate agin we get:

**y = -gt²/2 + vt**

and we all know that g = 9.8 that make:

**y = -4.9>t² + vt**

and this make our equation:

### y(height of the jumb) = -g(4.9 gravity/2) * t(time) * t(time) + v(volacity is the strong of the jumb) * t(time)

# Screens and Video of the game
### Splash screen
![ab56496c-886d-4caf-a2ce-7e508877d91a](https://user-images.githubusercontent.com/58918060/188489012-8c1235d8-1494-4188-90af-0d716dad4d6a.jpg)

# License

MIT License

Copyright (c) 2022 Abdulrhman Khaled Hassan Zaki

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.


### Game Play
![2fd1b0c5-0f0b-4078-acdc-aeed8870cc84](https://user-images.githubusercontent.com/58918060/188489033-ff2ad24e-45bd-4e79-81d4-f8c79db3a543.jpg)
![322c1054-6833-4a16-bb90-759f9d42846a](https://user-images.githubusercontent.com/58918060/188489040-47803f21-b7ab-4b02-a15f-cac531f6f2b0.jpg)

### Video of Game
https://user-images.githubusercontent.com/58918060/188489098-4bd068cb-2fda-480d-9d8e-e6eb341cd09d.mp4

### GIFs
![bird](https://user-images.githubusercontent.com/58918060/188489160-2ae0697a-d9aa-4a6b-9509-c004991fb617.gif)
![gameover](https://user-images.githubusercontent.com/58918060/188489164-0eb2db13-d3c2-45da-a9da-a316b3562b97.gif)









