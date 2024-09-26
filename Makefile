GCC = cc
FLAGS = -Wall -Werror -Wextra
NAME = ft_program
HEADER = header.h
SRC_DIR = srcs
# LIB = libft if needed
HEADER_PROT = prototype.h
ARCH = ar
FILENAME_SCRAPER = ./scrape_fnames.sh
PROTOTYPE_PLACER = ./set_prototypes.sh
SRC := $(shell $(FILENAME_SCRAPER) $(SRC_DIR)) # finds the source files

OBJ = $(SRC:%.c=%.o)

all: $(NAME)

$(NAME): $(OBJ)
	$(GCC) -o $(NAME) $(OBJ)

# Independent rule for each object file
%.o: %.c $(HEADER)
	$(GCC) $(FLAGS) -c $< -o $@

$(HEADER): $(SRC)
	cp $(HEADER_PROT) $(HEADER)
	$(PROTOTYPE_PLACER) $(HEADER) $(SRC)

clean:
	rm -rf $(OBJ)

fclean: clean
	rm -rf $(NAME)
	rm -rf $(HEADER)

re: fclean all

.PHONY: clean fclean all re

# made by oguzharunb
# https://github.com/oguzharunb/ft_template go give it a star :D
