<section>
<h1 align="center">Number Guessing Game</h1>
<h2>Description</h2>
<p>Number guessing game that runs in the terminal and saves user information, using Bash script, PostgreSQL, and Git</p>
<h2>Purpose</h2>
  <p><a href="https://www.freecodecamp.org">freeCodeCamp</a> Relational Database certification</p>
<h2>Required steps</h2>
  <ol>
    <li>Complete the project.</li>
      <ul>
        <li>Create a number_guessing_game folder in the project folder for the program</li>
        <li>Create number_guess.sh in number_guessing_game folder and give it executable permissions</li>
        <li>Script should have a shebang at the top of the file that uses #!/bin/bash</li>
        <li>Turn the number_guessing_game folder into a git repository</li>
        <li>Git repository should have at least five commits</li>
        <li>Script should randomly generate a number that users have to guess</li>
        <li>When user run the script, it should prompt the user for a username with Enter your username:, and take a username as input. Database should allow usernames of at least 22 characters</li>
        <li>If that username has been used before, it should print Welcome back, <username>! You have played <games_played> games, and your best game took <best_game> guesses., with <username> being a users name from the database, <games_played> being the total number of games that user has played, and <best_game> being the fewest number of guesses it took that user to win the game</li>
          <li>If the username has not been used before, you should print Welcome, <username>! It looks like this is your first time here.</li>
            <li>The next line printed should be Guess the secret number between 1 and 1000: and input from the user should be read</li>
          <li>Until they guess the secret number, it should print It's lower than that, guess again: if the previous input was higher than the secret number, and It's higher than that, guess again: if the previous input was lower than the secret number. Asking for input each time until they input the secret number.</li>
          <li>If anything other than an integer is input as a guess, it should print That is not an integer, guess again:</li>
          <li>When the secret number is guessed, script should print You guessed it in <number_of_guesses> tries. The secret number was <secret_number>. Nice job!</li>
            <li>The message for the first commit should be Initial commit</li>
            <li>The rest of the commit messages should start with fix:, feat:, refactor:, chore:, or test:</li>
            <li>Finish your project while on the main branch, working tree should be clean, and you should not have any uncommitted changes</li>
      </ul>
    <li>Submit the code.</li>
      <ul>
        <li>Save all the required files into a public repository and submit the URL.</li>
      </ul>
  </ol>
<h2>Result</h2>
<div>
  <p>The secret number is guessed</p>
  <img src="https://raw.githubusercontent.com/M1S7K/freeCodeCamp-Number-Guessing-Game/main/Result%20screenshots/Print%20from%20the%20script.png" width="380">
</div>
<div>
<div>
  <p>Data from the database</p>
  <img src="https://raw.githubusercontent.com/M1S7K/freeCodeCamp-Number-Guessing-Game/main/Result%20screenshots/Database.png" width="380">
</div>
<div>
  <p>All the necessary steps were completed</p>
  <img src="https://raw.githubusercontent.com/M1S7K/freeCodeCamp-Number-Guessing-Game/main/Result%20screenshots/Completed.png" width="380">
</div>
<h2>Possible options for the future project improvement</h2>
<ul>
  <li>Display 5 Best players from database</li>
  <li>After 10 tries reveal the hint</li>
</ul>
<h2>Helpful Links</h2>
<ol>
  <li><a href="https://www.postgresql.org/docs/">PostgreSQL documentation</a></li>
  <li><a href="https://www.gnu.org/savannah-checkouts/gnu/bash/manual/bash.html">Bash documentation</a>
  <li><a href="https://www.freecodecamp.org/learn/relational-database/">freeCodeCamp Relational Database course</a>
  <li><a href="https://docs.github.com/en/get-started/importing-your-projects-to-github/importing-source-code-to-github/adding-locally-hosted-code-to-github">Github documentation</a>
  <li><a href="https://git-scm.com/doc">Git documentation</a>
</ol>
 </section>
