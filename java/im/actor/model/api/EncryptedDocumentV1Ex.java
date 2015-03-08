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

public abstract class EncryptedDocumentV1Ex extends BserObject {
    public static EncryptedDocumentV1Ex fromBytes(int key, byte[] content) throws IOException {
        switch(key) { 
            case 1: return Bser.parse(new EncryptedDocumentV1ExPhoto(), content);
            case 2: return Bser.parse(new EncryptedDocumentV1VExideo(), content);
            default: return new EncryptedDocumentV1ExUnsupported(key, content);
        }
    }
    public abstract int getHeader();
}