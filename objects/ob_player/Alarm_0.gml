///@description Blink sprites

blink_count += 1;

if blink_count <= 5
{
	switch image_alpha
	{
		case 0:
			image_alpha = 1;
			break;
		case 1:
			image_alpha = 0;
			break;
	}
	//image_alpha = 0;
	alarm[0] = 5;
}
else
{
	image_alpha = 1;
}