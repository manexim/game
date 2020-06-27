public class Game : Virgil.Game {
    private Player player;

    public override void start () {
        window.set_title ("Game");

        render.set_background_colour (new Virgil.Graphics.Colour (88, 151, 233));

        player = new Player ();

        keyboard.add_key (SDL.Input.Keycode.w);
        keyboard.add_key (SDL.Input.Keycode.a);
        keyboard.add_key (SDL.Input.Keycode.s);
        keyboard.add_key (SDL.Input.Keycode.d);

        keyboard.add_key (SDL.Input.Keycode.SPACE);
    }

    public override void update () {
        player.update ();
    }

    public override void draw () {
        player.draw ();
    }
}

public static int main (string[] args) {
    var game = new Game ();

    return game.run ();
}
