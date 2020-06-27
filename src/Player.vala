public class Player : Virgil.GameObject {
    public Virgil.Vector2i transform;
    public int xaxis;
    public int yaxis;

    public Virgil.Graphics.Sprite sprite;

    private unowned Virgil.KeyboardManager keyboard;
    private unowned Virgil.RenderManager render;

    public Player () {
        int window_width, window_height;

        sprite = new Virgil.Graphics.Sprite ("data/assets/ball.svg");

        Virgil.GameState.get_window_state ().get_window ().get_size (out window_width, out window_height);
        transform = new Virgil.Vector2i (window_width / 2 - sprite.width / 2, window_height / 2 - sprite.height / 2);

        keyboard = Virgil.GameState.get_keyboard_state ();
        render = Virgil.GameState.get_render_state ();
    }

    public override void update () {
        transform.add (new Virgil.Vector2i (xaxis, yaxis));
    }

    public override void draw () {
        render.draw_sprite (sprite, transform.x, transform.y);
    }
}
