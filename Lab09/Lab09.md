## Lab 09

- Name: Javis Okey-Walker
- Email: okey-walker.2@wright.edu

## Part 1 Answers

- Make sure infinity is in your Lab09 folder in GitHub

## Part 2 Answers

1. Getting started
   - Command to find the PID: ps au
   - PID of "Terminal A": 1250
   - PID of "Terminal B": 1338
2. Using `./` to run `infinity` in Terminal B
   - PID of script: 1376
   - Command to kill script: kill 1376
   - Effects of running the script: You cannot still use Terminal B while the script is still running.
3. Using `source` to run `infinity` in Terminal B
   - PID of script: 1393
   - Command to kill the script: kill -INT 1338
   - Effects of killing the script: in order to kill this process, I had to kill the parent process to stop it from running.
4. Running `infinity` as a background job in Terminal B
   - Command to run script in background: ./infinity.sh &
   - Job ID of script: [1]+
   - PID of script: 1440
   - Command to kill script via job id: kill %1
   - Effects of exiting terminal: No, because its specified to the terminal its in and once its closed the process stops running with it.
5. Run `infinity` in a `screen` or `tmux` session
   - Command(s) to run `infinity` in a screen session: tmux, ./infinity.sh
   - Detach from `screen` / `tmux` session: Ctrl+B  D
   - Command to show `screen` / `tmux` sessions: tmux ls
   - Effects of exiting terminal: the tmux session is still running because it has not yet been killed.
   - Command / steps to kill the `screen` / `tmux` session: tmux kill-session

## Part 3 Answers

1.
2.
3.
4.
5. Confirmed?
6.
7.
8.
9. Confirmed?
10.
