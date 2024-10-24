extends Node

const WINDOW_WIDTH : int = 320
const WINDOW_HEIGHT : int = 240

enum Collisions
{
	COLL_LEFT_WALL = 1,     # Touching a left wall
	COLL_CEILING = 2,       # Touching a ceiling
	COLL_RIGHT_WALL = 4,    # Touching a right wall
	COLL_GROUND = 8         # Touching the ground
	# To be continued
}

enum Direction
{
	DIR_LEFT = 0,
	DIR_UP = 1,
	DIR_RIGHT = 2,
	DIR_DOWN = 3,
	DIR_AUTO = 4,
	DIR_OTHER = 5
}