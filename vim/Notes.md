# Vim

- https://scotch.io/tutorials/getting-started-with-vim-an-interactive-guide


## Move around file


k - up
j - down
h - left
l - right

w - Forward by word
b - Backward by word

) - Beginning of next sentence
( - Beginning of current sentence

} - Beginning of next paragraph
{ - Beginning of current paragraph

] - Beggining of next section
[ - Begginning of current section

H - Top line of screen
M - Middle line of screen
L - Last line of screen

G - Move to bottom of file
gg - Move to start of file
[number]+G - Jump to line [number]
:[number] - Go to line [number]


## Deletion

dw - Delete word
d[number]w - Delete [number] words

d$ - Delete to end of line
d[number]$ - Delete [number] lines going down
d[number][up/down] - delete [number] of rows in the direction of [up/down] including current line


## Undo

u - Undo


## Search

:/[term] - Search a page for [term]
:?[term] - Search before cursor for [term]
n - Go to next match
N - Go to previous match
,[space] - remove highlighting

:s/[search]/[replace] - Search and replace
:s/[search]/[replace]/g - Search and replace all


## Modes

v  >>  visual
V  >>  visual line
e  >>  edit
i  >>  insert


## Copy and Paste

V   >>  select this line
y   >>  yank this selection
yy  >>  yank this line
p   >>  paste current


## Search file

/[text]    >>  search within file
n          >>  goto next occurance in file
,[space]   >>  remove highlighting



- Use `zz` to center the currently highlighted line in the middle of the widow.
