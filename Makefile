SRCS		=	ft_atoi.c ft_isalpha.c ft_isdigit.c ft_strlen.c ft_strlcat.c ft_toupper.c \
				ft_tolower.c ft_strncmp.c ft_isalnum.c ft_isascii.c ft_isprint.c ft_strlcpy.c \
				ft_memset.c ft_memcpy.c ft_bzero.c ft_strchr.c ft_strrchr.c ft_memchr.c ft_memcmp.c \
				ft_strnstr.c ft_strdup.c ft_calloc.c ft_memmove.c ft_substr.c ft_strjoin.c \
				ft_strtrim.c ft_split.c ft_itoa.c ft_strmapi.c ft_striteri.c ft_putchar_fd.c \
				ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c

BONUS_SRCS	=	ft_lstnew_bonus.c ft_lstadd_front_bonus.c ft_lstsize_bonus.c ft_lstlast_bonus.c \
				ft_lstadd_back_bonus.c ft_lstdelone_bonus.c ft_lstclear_bonus.c ft_lstiter_bonus.c \
				ft_lstmap_bonus.c

OBJS		= ${SRCS:.c=.o}

BONUS_OBJS	= $(BONUS_SRCS:.c=.o)

HDRS		= libft.h

NAME		= libft.a

AR			= ar rcs

RM			= rm -f

CFLAGS		= -Wall -Wextra -Werror

${NAME}:	${OBJS} $(HDRS)
			${AR} ${NAME} ${OBJS}

all:		${NAME}

bonus:		$(OBJS) $(BONUS_OBJS) $(HDRS)
			$(AR) $(NAME) $(OBJS) $(BONUS_OBJS)

re:			clean fclean all

clean:		
			${RM} ${OBJS} $(BONUS_OBJS)

fclean:		clean
			${RM} ${NAME}

.PHONY:		all clean fclean re bonus
