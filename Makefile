# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hhismans <hhismans@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/20 01:01:15 by hhismans          #+#    #+#              #
#    Updated: 2015/05/28 09:18:52 by hhismans         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


NAME = ASMtest

SRC = src/ft_bzero.s \
	  src/ft_isalpha.s \
	  src/ft_isdigit.s \
	  src/ft_isalnum.s \
	  src/ft_isascii.s \
	  src/ft_toupper.s \
	  src/ft_tolower.s \

DEL = rm -f

OBJ = $(SRC:.s=.o)

OBJDIR = ./obj

FLAG = -Wall -Werror -Wextra

CC = gcc

NASM = ~/.brew/bin/nasm -f macho64

LIB = -I./includes

all: $(NAME)

$(NAME): $(OBJ)
	@gcc -o $(NAME) $(FLAG) $(OBJ) src/main.c $(LIB)
	@echo
	@echo "make -> $@ created"
	@echo

%.o: %.s
	$(NASM) $<
	@echo [36mCompilation of[1m $< [0m[32m done [37m

clean:
	@$(DEL) $(OBJ)
	@echo
	@echo "clean -> .o deleted"
	@echo

fclean: clean
	@$(DEL) $(NAME)
	@echo
	@echo "fclean -> ... and $(NAME) deleted"
	@echo

re: fclean all
	@echo
	@echo "re -> $(NAME) reloaded"
	@echo

.PHONY: all clean fclean re

