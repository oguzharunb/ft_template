#include <unistd.h>

static void	og_putchar(char c)
{
	write(1, &c, 1);
}

void	og_putstr(char *str)
{
	int	i;

	i = -1;
	while(str[++i])
		og_putchar(str[i]);

}

// made by oguzharunb
