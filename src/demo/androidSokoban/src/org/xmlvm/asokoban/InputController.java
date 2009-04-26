package org.xmlvm.asokoban;

import android.hardware.SensorListener;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

/**
 * This controller handles input coming from the various controllers.
 */
public class InputController implements SensorListener, OnTouchListener {
    /** Accelerometer threshold to start moving the man. */
    private static final float accelerometerThreshold = 1.7f;
    /** Swiping threshold to start moving the man. */
    private static final float swipeThreshold         = 20f;

    private GamePieceMover     mover;
    private GameController     controller;

    /** The X coordinate for the last touch button down event. */
    private float              lastDownX;
    /** The Y coordinate for the last touch button down event. */
    private float              lastDownY;
    /** The X coordinate for the last touch button up event. */
    private float              lastUpX;
    /** The Y coordinate for the last touch button up event. */
    private float              lastUpY;

    public InputController(GamePieceMover mover, GameController controller) {
        this.mover = mover;
        this.controller = controller;
    }

    /**
     * Callback to process sensor events. Sensor events are used to move the
     * game's man. They are translated to either -1, 0 or 1 meaning a movement
     * to the left, no movement or to the right (up and down respectivly).
     * 
     * @param sensor
     *            Indicates which sensor generated the event.
     * @param values
     *            The values retrieved from the sensor. To determine the man's
     *            movement the first two values (x and y) are used.
     */
    public void onSensorChanged(int sensor, float[] values) {
        // No need to process updates when the game is paused.
        if (controller.isGamePaused()) {
            return;
        }

        float x = values[0];
        float y = -values[1];
        mover.setMovingSpeed(x, y);
        if (mover.isMoving()) {
            return;
        }
        moveWithInput(x, y, accelerometerThreshold);
    }

    /**
     * Depending on a movement input, this method will move the man.
     * 
     * @param x
     *            The change of movement in X direction.
     * @param y
     *            The change of movement in Y direction.
     * @param threshold
     *            The threshold that has to be exceeded in order for a move to
     *            trigger.
     */
    public void moveWithInput(float x, float y, float threshold) {
        int dx = 0;
        int dy = 0;
        if (Math.abs(x) > Math.abs(y)) {
            if (x > threshold)
                dx = 1;
            if (x < -threshold)
                dx = -1;
        } else {
            if (y > threshold)
                dy = 1;
            if (y < -threshold)
                dy = -1;
        }
        if (Math.abs(dx) > 0 || Math.abs(dy) > 0) {
            controller.moveMan(dx, dy);
        }
    }

    /*
     * (non-Javadoc)
     * 
     * @see android.hardware.SensorListener#onAccuracyChanged(int, int)
     */
    public void onAccuracyChanged(int arg0, int arg1) {
        // Do nothing.
    }

    /*
     * (non-Javadoc)
     * 
     * @see android.view.View.OnTouchListener#onTouch(android.view.View,
     * android.view.MotionEvent)
     */
    public boolean onTouch(View v, MotionEvent event) {
        if (event.getAction() == MotionEvent.ACTION_DOWN) {
            lastDownX = event.getX();
            lastDownY = event.getY();
        } else if (event.getAction() == MotionEvent.ACTION_UP
                || event.getAction() == MotionEvent.ACTION_MOVE) {
            lastUpX = event.getX();
            lastUpY = event.getY();
            moveWithInput(lastUpX - lastDownX, lastUpY - lastDownY, swipeThreshold);
        }
        return true;
    }
}