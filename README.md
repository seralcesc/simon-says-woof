# Simon Says: WOOF! 🐶🔊✨

**Group 01 Members** 🌟  
- Adrián Muñoz Lorenzo  
- Luis Gómez Del Moral  
- Sergio Alcántara Escudero  
- Coraima Mera Rodriguez  

## 1. General Idea 🎲

- **Genre:** Puzzle / Memory 🧠  
- **Platform:** PC / Web 💻🌐  
- **Target Audience:** Casual / Children 👶😄  
- **Description:** The player must repeat a sequence of actions performed by a guide dog. As the game progresses, the sequence becomes longer and faster. 🐕‍🦺➡️📈

## 2. Player 🧑‍🏫

- **Role:** The player acts as the owner or trainer of the pixelated dog. 🐶❤️  
- **Objective:** Memorize and correctly execute the sequence of commands to accumulate the highest score (High Score) and unlock new aesthetic features. 🏆✨  
- **Skills required:**  
  - Short-term memory: To retain the sequence of actions that accumulate round by round. 🧠💭  
  - Reflexes: To input commands within the time limit before the progress bar runs out. ⚡⌛  
  - Rhythm: To keep the "happiness" multiplier active by responding smoothly. 🎶😊

## 3. Rounds 🔄

In each round, we consider the following:  
- **Observation Phase:** The dog performs a series of random actions (animations). 👀🐕  
- **Input Phase:** The player must repeat the sequence by pressing the assigned keys. ✋⌨️  
- **Growth:** Each round won adds a new step to the current sequence. 📏➕

## 4. Game Mechanics ⚙️

The core of the game is based on two repeating phases:

1. **Observation Phase** 👀  
   The game performs a series of animations (e.g., "Bark, Jump, Sit!") 🗣️⬆️🪑

2. **Action Phase** ▶️  
   The player must press the correct keys in the same order.  
   If they fail, the dog performs a confused animation. 😵‍💫🐶

## 5. Use of Sprites 🖼️

| Feature           | Animation Used                  | Purpose in the Design                                |
|-------------------|----------------------------------|-----------------------------------------------------|
| Idle State        | idlesprite.png                  | The dog breathes and wags its tail while waiting for the game to start. 🐾😌 |
| Voice Command     | barksprite with lines.png       | Used when the command requires the dog to "bark". 🗣️🔊 |
| Physical Command  | jumpsprite.png                  | Ideal for "action" or agility commands. ⬆️💨 |
| Rest Mode         | sitsprite.png                   | Appears between rounds or when the player takes too long to respond. 🪑💤 |
| Game Over         | poopsprite.png                  | A funny way to say "Game Over" if the player loses the streak. 💩😂 |

## 6. Progression and Rewards 🚀

- **"Happiness" Multiplier:** If the player responds very quickly, the dog changes from walking animation to running to show it’s excited. 🏃‍♂️🐶😍  
- **Maximum Score (High Score):** Save the record of how many steps the player managed to remember. 🏅📊  
- **Unlockables:** For instance, if you reach round 10, the dog may bark with a different animation or change color through a code feature. 🎨🔓

## 7. Visual and Sound Feedback 📢🎨

It is vital for the player to know whether they are doing well or poorly. To achieve this, we will consider the following:

- **Correct Action:** If the player presses the correct key, the dog quickly performs the animation. ✅✨  
- **Mistake:** If the player fails, you can use the "Sit" animation with a "smoke" particle effect or question marks to show confusion. ❓😖  
- **Time Limit:** Add a progress bar that slowly depletes; if you don’t press the key before this ends, the dog gets distracted (you can use the "Poop" animation as a funny punishment). ⏳💨😂

## 8. Interface 🖥️

In the proposed interface, we’d like to include:

- **Main Menu:** Button to play and exit. ▶️🚪  

- **Game Screen:**  
  - Step Counter: A large number indicating which step of the sequence you’re at (e.g., 3/5). 🔢  
  - Maximum Score. 🏆  
  - Key Guide: A small on-screen icon reminding the player: [J] Bark, [K] Jump, etc. ⌨️🪧  
  - Energy Bar: A bar that fills up with each correct action and gives you an "extra life" if you complete a perfect sequence. ❤️⚡

- **Game Over:** A message saying Oh no! 😱