package im.actor.model.api;
/*
 *  Generated by the Actor API Scheme generator.  DO NOT EDIT!
 */

import im.actor.model.droidkit.bser.Bser;
import im.actor.model.droidkit.bser.BserParser;
import im.actor.model.droidkit.bser.BserObject;
import im.actor.model.droidkit.bser.BserValues;
import im.actor.model.droidkit.bser.BserWriter;
import im.actor.model.droidkit.bser.DataInput;
import static im.actor.model.droidkit.bser.Utils.*;
import java.io.IOException;
import im.actor.model.network.parser.*;
import java.util.List;
import java.util.ArrayList;

public class TextMessageExUnsupported extends TextMessageEx {

    private int key;
    private byte[] content;

    public TextMessageExUnsupported(int key, byte[] content) {
        this.key = key;
        this.content = content;
    }

    @Override
    public int getHeader() {
        return this.key;
    }

    @Override
    public void parse(BserValues values) throws IOException {
        throw new IOException("Parsing is unsupported");
    }

    @Override
    public void serialize(BserWriter writer) throws IOException {
        writer.writeRaw(content);
    }

}