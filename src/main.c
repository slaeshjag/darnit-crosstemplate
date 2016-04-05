#include <darnit/darnit.h>


int main(int argc, char **argv) {
	d_init("Template", "arne", NULL);

	for (;;) {
		d_render_begin();
		d_render_end();

		d_loop();
	}

	d_quit();

	return 0;
}
