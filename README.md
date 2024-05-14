The origin of this game goes back to me stumbling on an interesting video by The Coding Train on YouTube about the tiling wave function collapse algorithm(TWFC), originally created by mxgmn on github, as I thought it would be a good challenge to completely rewrite the overlapping version of the algorithm(OFWC) in GameMakerStudio2. 

Here is a link to the Coding Train video: https://youtu.be/rI_y2GAlQFM?si=2pp_GDA5mVyBgGXT

Here is a link to Maxim Gumin's github page Wave Function Collapse: https://github.com/mxgmn/WaveFunctionCollapse

Both of these works are properties of The Coding Train and Maxim Gumin respectively.

The idea then came to me that I could combine this algorithm with others to make for interesting map generation, and this is where the idea for this game came from. At that point I had a vague idea of what I wanted the game to be and I knew I wanted it to be a mix between the survival and roguelike genres where you play against your friends. I did however know that I wanted to implement different algorithms and programming concepts that I find interesting because I knew that it would make it interesting for me working alone on this project and I wanted to display my programming skills.

As I have said before, the idea for the game came to me when I had seen the video by The Coding Train about the TWFC, so the first thing I did was write the OWFC algorithm on GameMakerStudio2. As this repository was not created to explain the workings of the OWFC, I will keep the explanation of it's working very short; the overlapping algorithm works by taking a picture as an input, separating it in chunks of n by n pixels to establish rules for the generation, and then generating an output image of any size using principles from quantum mechanics.

Indeed, the input picture's pixel data needs to be parsed to create the foundation of the algorithm, so the first thing i did was create a simple program that writes matrices containing the input picture's pixel color data as numbers assigned to different colors.

For example, the following picture:


### To be continued...
