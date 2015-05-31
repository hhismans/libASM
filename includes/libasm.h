#ifndef LIBASM_H
# define LIBASM_H

#include <ctype.h>

struct s_flags
{
	char	flag[100];
	int		(*p)(void);
};

typedef struct s_flags t_flags;

void	ft_bzero(void *s, size_t size);
int		ft_isalpha(int size);
int		ft_isdigit(int size);
int		ft_isalnum(int size);
int		ft_isprint(int size);
int		ft_isascii(int size);
int		ft_puts(char *size);
size_t	ft_strlen(const char *size);
void	*ft_memset(void *size, int i, size_t len);
void	*ft_memcpy(const void *size,const void * i, size_t len);

#endif
