# Dominions 5 Server: Boilerplate and template for Docker configuration

## How to use
1. Install docker and run Docker deamon if it's not start automatically.
https://docs.docker.com/install/linux/docker-ce/ubuntu/

2. Add your user to docker group if you don't want to type sudo every time.
https://docs.docker.com/install/linux/linux-postinstall/

3. Put Dominions 5 game to `volume` directory.

4. Create a new text file for each game. Each file must match the pattern: `<unique game name>-<unique port number>`. Names and ports must be unique. Use `example-game-MA-2000` file as a template. You can host many games in the same time. Each game require new file.

5. Edit options in the text game file.

6. Run `up.sh <your-game-file-name>`.

7. Wait for pretenders.

8. Run `newgamestart.sh <your-game-file-name>`. It will take a while until new map is generated.

If you want to change options (for example hours or quickhost) run `down.sh <your-game-file-name>`, then edit game file and then run `up.sh <your-game-file-name>`.

To finish and remove game run `down.sh <your-game-file-name>` and delete saves, map etc. from `server/volume/dominions5/` directory.

Run `ps.sh` to list all games.
