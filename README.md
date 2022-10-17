# 428 Assignment A

Project Backlog for an Online Chess App

# Group 3
| Name | ID |
|---|---|
| Ruoli Wang | 260833864 |
| Zheyan Tu | 260828963 |
| Theodore Peters | 260919785 |

# Functional Requirements

| ID | User Story | Filename |
|---|---|---|
| FR01 | As a user, I would like to register for an account so that I can save my rating and preferences | register.feature |
| FR02 | As a user, I would like to sign into my account so that I can use my saved preferences and rating | sign_in.feature |
| FR03 | As a user, I would like to sign out of my account so that I can prevent others from using my account | sign_out.feature |
| FR04 | As a player, I would like to find a game so that I can play chess online | start_game.feature |
| FR05 | As a player, I would like to play a legal move with a pawn so that I can move my pawn | pawn.feature |
| FR06 | As a player, I would like to play a legal move with my bishop so that I can move my bishop | bishop.feature |
| FR07 | As a player, I would like to play a legal move with my knight so that I can move my knight | knight.feature |
| FR08 | As a player, I would like to play a legal move with my rook so that I can move my rook | rook.feature |
| FR09 | As a player, I would like to play a legal move with my queen so that I can move my queen | queen.feature |
| FR10 | As a player, I would like to play a legal move with my king so that I can move my king | king.feature |
| FR11 | As a player, I would like my game to end when a player wins or draws so that I can start my next game or exit | check_game_end.feature |
| FR12 | As a player, I would like to offer a draw to my opponent so that we can start our next match | offer_draw.feature |
| FR13 | As a player, I would like to resign so that I can avoid playing out a game I will lose | resign.feature |
| FR14 | As a player, I would like to request a takeback after making a move so that I can make a better move | takeback.feature |
| FR15 | As a player, I would like to play chess with time control so that I can ensure that a match will not last too long | timer.feature |
| FR16 | As a user, I would like to send friend requests to other users so I can play chess with them afterwards | send_friend_request.feature |
| FR17 | As a user, I would like to see a list of my friends and their status so that I can start a game with one of them | display_friend_list.feature |
| FR18 | As a user, I would like to remove a friend so they can no longer send me game requests | remove_friend.feature |
| FR19 | As a user, I would like to edit my profile so that I can introduce myself to other users | edit_profile.feature |
| FR20 | As a user, I would like to change my password soo that I can protect my account from being stolen | security_setting.feature |
| FR21 | As a user, I would like to customize the language of the application so that I can use the application in a language I am comfortable with | language_setting.feature |
| FR22 | As a user, I would like to customize the background of my chess board so that I can play on my favorite color combination | background_color_setting.feature |
| FR23 | As a user, I would like to view a list of notifications so that I can see when my friend has invited me to a game | display_notification.feature |
| FR24 | As a user, I would like to spectate other players' duel so that I can learn from others and entertainment | display_live_lobby.feature |
| FR25 | As a spectator, I would like to chat in a live lobby so that I can interact with the other spectators | live_lobby_chat.feature |
| FR26 | As a player or spectator, I would like to view a list of moves played in a game so that I can review the moves made by each player and see if the game is about to be drawn | view_player_moves.feature |
| FR27 | As a player or spectator, I would like to flip the display of a chess board so that I can see the position from the perspective of either side | flip_board.feature |
| FR28 | As a user, I would like to post on a forum, so that I can discuss one of my games or chess in general | add_post.feature |
| FR29 | As a moderator, I would like to delete innapropriate posts so that I can maintain a healthy community enviornment | delete_post.feature |
| FR30 | As a user, I would like to view a list of streams on an external platform using the website so that I can find a streamer to watch | display_live_streamer.feature |
| FR31 | As a user, I would like to create an analysis session so that I can study custom positions of my choosing | create_analysis_session.feature |
| FR32 | As an analyst, I would like to import a game played on the site so that I can study one of my past games | import_game_to_analysis.feature |
| FR33 | As an analyst, I would like to import a game from a list of moves so that I can study a game played external to the site | import_moves_to_analysis.feature |
| FR34 | As an analyst, I would like to request a computer evaluation of a position so I can see what moves could be improved upon | view_computer_analysis.feature |
| FR35 | As a moderator, I would like to ban a player from playing on the site so that cheaters are prevented from playing | ban_player.feature |
| FR36 | As a player, I would like to have a rating which is updated when I finish a game so that I can evaluate my skill | update_rating.feature |
| FR37 | As a player, I would like to see a leaderboard of top-rated players so that I can compare my skill level relative to top players | view_rating_leaderboard.feature |
| FR38 | As a player, I would like to see the rating of my opponent so that I can evaluate their skill relative to mine | view_opponent_rating.feature |
| FR39 | As a player, I would like to see a list of my games so that I can choose to analyze them | view_my_games.feature |
| FR40 | As a user, I would like to comment on a forum post so that I can share my opinions about other player's games | comment_on_post.feature |
| FR41 | As a moderator, I would like to delete a comment on a forum post so that I can maintain a healthy community enviornment | delete_comment.feature |
| FR42 | As a user, I would like to report a game for suspicious behaviour so that a moderator can evaluate whether my opponent was cheating | report_game.feature |
| FR43 | As a moderator, I would like to see a list of reported games so I can analyze whether players were cheating | view_reported_games.feature |
| FR44 | As a user, I would like to view a list of most spectated lobbies so that I can watch an exciting game | view_most_spectated_lobbies.feature |
| FR45 | As a moderator, I would like to edit the list of featured external streamers so that the best content is visible to users | edit_live_streamer.feature |

# Non-functional Requirements

| ID | Requirement |
|---|---|
| UR01 | A new user of the site should be able to successfully create an account in at most 90 seconds, 90% of the time |
| UR02 | A new user should be able to access the chess website from any standard mobile and desktop screen size |
| PR01 | A player should recieve their opponent's move within 1 second of it being made, 95% of the time |
| PR02 | A player should recieve other's friend request within 1 second of it being made, 95% of the time |
| PR03 | The chess website shall support at least 10,000 active users at the same time |
