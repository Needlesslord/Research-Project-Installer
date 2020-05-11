#include "p2Defs.h"
#include "p2Log.h"
#include "j1App.h"
#include "j1Input.h"
#include "j1Textures.h"
#include "j1Audio.h"
#include "j1Render.h"
#include "j1Window.h"
#include "j1Scene.h"
#include "j1Fonts.h"
#include <iostream>

j1Scene::j1Scene() 
{
	name.create("scene");
}

j1Scene::~j1Scene() {}

// Called before render is available
bool j1Scene::Awake(pugi::xml_node& config)
{
	LOG("Loading Scene");

	return true;
}

// Called before the first frame
bool j1Scene::Start()
{
	player1.rect = { 20, 100, 20, 100 };
	player2.rect = { 710, 100, 20, 100 };

	player1.score = 0;
	player2.score = 0;

	ball.rect = { 100, 100 , 10, 10 };
	ball.speed = { 5.0f , 5.0f };

	player_tex = App->tex->Load("textures/Player.png");
	ball_tex = App->tex->Load("textures/ball.png");

	//App->audio->PlayMusic("audio/music/music.ogg");

	numbers = App->fonts->Load("textures/Numbers.png", "0123456789", 1);

	return true;
}

// Called each loop iteration
bool j1Scene::PreUpdate()
{
	return true;
}

// Called each loop iteration
bool j1Scene::Update()
{
	//Player 1 controls
	if (App->input->GetKey(SDL_SCANCODE_W) == KEY_REPEAT)
	{
		player1.rect.y -= 3;

		if (player1.rect.y < 0) 
		{
			player1.rect.y = 0;
		}
	}

	if (App->input->GetKey(SDL_SCANCODE_S) == KEY_REPEAT)
	{
		player1.rect.y += 3;

		if (player1.rect.y + player1.rect.h > 500)
		{
			player1.rect.y = 500 - player1.rect.h;
		}
	}

	//Player 2 controls
	if (App->input->GetKey(SDL_SCANCODE_UP) == KEY_REPEAT)
	{
		player2.rect.y -= 3;

		if (player2.rect.y < 0)
		{
			player2.rect.y = 0;
		}
	}

	if (App->input->GetKey(SDL_SCANCODE_DOWN) == KEY_REPEAT)
	{
		player2.rect.y += 3;

		if (player2.rect.y + player2.rect.h > 500)
		{
			player2.rect.y = 500 - player2.rect.h;
		}
	}

	
	//Horizontal movement
	ball.rect.x += ball.speed.x;

	//Ball going right
	if (ball.rect.x < 0 || ball.rect.x > 750)
	{
		RoundOver();
	}

	//Collisions with Player 1
	if (player1.rect.x < ball.rect.x && player1.rect.x + player1.rect.w > ball.rect.x && player1.rect.y < ball.rect.y + ball.rect.h && player1.rect.y + player1.rect.h > ball.rect.y)
	{
		if (ball.speed.x < 0)
		{
			ball.rect.x = player1.rect.x + player1.rect.w;
			ball.speed.x *= (-1);
		}
	}

	//Collisions with Player 2
	if (player2.rect.x + player2.rect.w > ball.rect.x + ball.rect.w && player2.rect.x < ball.rect.x + ball.rect.w && player2.rect.y < ball.rect.y + ball.rect.h && player2.rect.y + player2.rect.h > ball.rect.y)
	{
		if (ball.speed.x > 0)
		{
			ball.rect.x = player2.rect.x - ball.rect.w;
			ball.speed.x *= (-1);
		}
	}

	//Vertical movement
	ball.rect.y += ball.speed.y;

	//Ball bouncing from the top
	if (ball.rect.y <= 0 && ball.speed.y < 0)
	{
		ball.rect.y = 0;
		ball.speed.y *= (-1);
	}

	//Ball bouncing from the bottom
	else if (ball.rect.y >= 500 && ball.speed.y > 0)
	{
		ball.rect.y = 500;
		ball.speed.y *= (-1);
	}

	//Score player 1
	sprintf_s(player1.score_string, 10, "%d", player1.score);
	App->fonts->BlitText(290, 50, numbers, player1.score_string);

	//Score player 2
	sprintf_s(player2.score_string, 10, "%d", player2.score);
	App->fonts->BlitText(390, 50, numbers, player2.score_string);

	//Rendering players and ball
	App->render->Blit(player_tex, player1.rect.x, player1.rect.y);
	App->render->Blit(player_tex, player2.rect.x, player2.rect.y);
	App->render->Blit(ball_tex, ball.rect.x, ball.rect.y);


	return true;
}

// Called each loop iteration
bool j1Scene::PostUpdate()
{
	bool ret = true;

	if(App->input->GetKey(SDL_SCANCODE_ESCAPE) == KEY_DOWN)
		ret = false;

	return ret;
}

// Called before quitting
bool j1Scene::CleanUp()
{
	LOG("Freeing scene");

	return true;
}

void j1Scene::RoundOver() {

	if (!isScoreUpdated)
	{
		if (ball.rect.x < 0)
		{
			player2.score += 1;
		}
		else if (ball.rect.x > 750)
		{
			player1.score += 1;
		}
		isScoreUpdated = true;
	}

	timer++;
	if (timer < 100)
	{
		return;
	}
	timer = 0;

	isScoreUpdated = false;

	ball.rect = { 100, 100 , 10, 10 };
	ball.speed = { 5.0f , 5.0f };
}