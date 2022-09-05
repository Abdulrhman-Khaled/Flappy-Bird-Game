# Flappy Bird Game
### It's a Cloning of Flappy Bird game using Flutter (Bloc State Management Library) with Egyptian touch.
![applogo2](https://user-images.githubusercontent.com/58918060/188484031-128a1a7a-198f-412d-84c4-794f80fd4bcc.png)
# Game Idea
### The game is based on an equation linking gravity, acceleration and time, the equation can be analyzed as follows:
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




