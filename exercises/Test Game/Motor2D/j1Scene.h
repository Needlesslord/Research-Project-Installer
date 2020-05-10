#ifndef __j1SCENE_H__
#define __j1SCENE_H__

#include "j1Module.h"

struct SDL_Texture;

struct Object {

	SDL_Rect rect;
	fPoint speed;
	uint score;
	char score_string[10];
};

class j1Scene : public j1Module
{
public:

	j1Scene();

	// Destructor
	virtual ~j1Scene();

	// Called before render is available
	bool Awake(pugi::xml_node&);

	// Called before the first frame
	bool Start();

	// Called before all Updates
	bool PreUpdate();

	// Called each loop iteration
	bool Update();

	// Called before all Updates
	bool PostUpdate();

	// Called before quitting
	bool CleanUp();

	// Every time the balls gets through
	void RoundOver();

private:

	uint timer;

	Object player1;
	Object player2;
	Object ball;

	SDL_Texture* player_tex;
	SDL_Texture* ball_tex;

	int numbers = 0;

	bool isScoreUpdated = false;

};

#endif // __j1SCENE_H__