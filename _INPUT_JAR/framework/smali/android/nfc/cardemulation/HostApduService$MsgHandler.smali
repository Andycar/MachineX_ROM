.class final Landroid/nfc/cardemulation/HostApduService$MsgHandler;
.super Landroid/os/Handler;
.source "HostApduService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/cardemulation/HostApduService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MsgHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/nfc/cardemulation/HostApduService;


# direct methods
.method constructor <init>(Landroid/nfc/cardemulation/HostApduService;)V
    .registers 2

    .prologue
    .line 229
    iput-object p1, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    .line 232
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_c8

    .line 294
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 296
    :cond_9
    :goto_9
    return-void

    .line 234
    :pswitch_a
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 235
    .local v1, "dataBundle":Landroid/os/Bundle;
    if-eqz v1, :cond_9

    .line 238
    iget-object v6, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    iget-object v6, v6, Landroid/nfc/cardemulation/HostApduService;->mNfcService:Landroid/os/Messenger;

    if-nez v6, :cond_1c

    iget-object v6, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iput-object v7, v6, Landroid/nfc/cardemulation/HostApduService;->mNfcService:Landroid/os/Messenger;

    .line 240
    :cond_1c
    const-string v6, "data"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 241
    .local v0, "apdu":[B
    if-eqz v0, :cond_63

    .line 242
    iget-object v6, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    invoke-virtual {v6, v0, v8}, Landroid/nfc/cardemulation/HostApduService;->processCommandApdu([BLandroid/os/Bundle;)[B

    move-result-object v3

    .line 243
    .local v3, "responseApdu":[B
    if-eqz v3, :cond_9

    .line 244
    iget-object v6, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    iget-object v6, v6, Landroid/nfc/cardemulation/HostApduService;->mNfcService:Landroid/os/Messenger;

    if-nez v6, :cond_3a

    .line 245
    const-string v6, "ApduService"

    const-string v7, "Response not sent; service was deactivated."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 248
    :cond_3a
    const/4 v6, 0x1

    invoke-static {v8, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v5

    .line 249
    .local v5, "responseMsg":Landroid/os/Message;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 250
    .local v4, "responseBundle":Landroid/os/Bundle;
    const-string v6, "data"

    invoke-virtual {v4, v6, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 251
    invoke-virtual {v5, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 252
    iget-object v6, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    iget-object v6, v6, Landroid/nfc/cardemulation/HostApduService;->mMessenger:Landroid/os/Messenger;

    iput-object v6, v5, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 254
    :try_start_52
    iget-object v6, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    iget-object v6, v6, Landroid/nfc/cardemulation/HostApduService;->mNfcService:Landroid/os/Messenger;

    invoke-virtual {v6, v5}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_59} :catch_5a

    goto :goto_9

    .line 255
    :catch_5a
    move-exception v2

    .line 256
    .local v2, "e":Landroid/os/RemoteException;
    const-string v6, "TAG"

    const-string v7, "Response not sent; RemoteException calling into NfcService."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 261
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "responseApdu":[B
    .end local v4    # "responseBundle":Landroid/os/Bundle;
    .end local v5    # "responseMsg":Landroid/os/Message;
    :cond_63
    const-string v6, "ApduService"

    const-string v7, "Received MSG_COMMAND_APDU without data."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 265
    .end local v0    # "apdu":[B
    .end local v1    # "dataBundle":Landroid/os/Bundle;
    :pswitch_6b
    iget-object v6, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    iget-object v6, v6, Landroid/nfc/cardemulation/HostApduService;->mNfcService:Landroid/os/Messenger;

    if-nez v6, :cond_79

    .line 266
    const-string v6, "ApduService"

    const-string v7, "Response not sent; service was deactivated."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 270
    :cond_79
    :try_start_79
    iget-object v6, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    iget-object v6, v6, Landroid/nfc/cardemulation/HostApduService;->mMessenger:Landroid/os/Messenger;

    iput-object v6, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 271
    iget-object v6, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    iget-object v6, v6, Landroid/nfc/cardemulation/HostApduService;->mNfcService:Landroid/os/Messenger;

    invoke-virtual {v6, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_86
    .catch Landroid/os/RemoteException; {:try_start_79 .. :try_end_86} :catch_87

    goto :goto_9

    .line 272
    :catch_87
    move-exception v2

    .line 273
    .restart local v2    # "e":Landroid/os/RemoteException;
    const-string v6, "ApduService"

    const-string v7, "RemoteException calling into NfcService."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 278
    .end local v2    # "e":Landroid/os/RemoteException;
    :pswitch_91
    iget-object v6, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    iput-object v8, v6, Landroid/nfc/cardemulation/HostApduService;->mNfcService:Landroid/os/Messenger;

    .line 279
    iget-object v6, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Landroid/nfc/cardemulation/HostApduService;->onDeactivated(I)V

    goto/16 :goto_9

    .line 282
    :pswitch_9e
    iget-object v6, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    iget-object v6, v6, Landroid/nfc/cardemulation/HostApduService;->mNfcService:Landroid/os/Messenger;

    if-nez v6, :cond_ae

    .line 283
    const-string v6, "ApduService"

    const-string/jumbo v7, "notifyUnhandled not sent; service was deactivated."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 287
    :cond_ae
    :try_start_ae
    iget-object v6, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    iget-object v6, v6, Landroid/nfc/cardemulation/HostApduService;->mMessenger:Landroid/os/Messenger;

    iput-object v6, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 288
    iget-object v6, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    iget-object v6, v6, Landroid/nfc/cardemulation/HostApduService;->mNfcService:Landroid/os/Messenger;

    invoke-virtual {v6, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_bb
    .catch Landroid/os/RemoteException; {:try_start_ae .. :try_end_bb} :catch_bd

    goto/16 :goto_9

    .line 289
    :catch_bd
    move-exception v2

    .line 290
    .restart local v2    # "e":Landroid/os/RemoteException;
    const-string v6, "ApduService"

    const-string v7, "RemoteException calling into NfcService."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 232
    nop

    :pswitch_data_c8
    .packed-switch 0x0
        :pswitch_a
        :pswitch_6b
        :pswitch_91
        :pswitch_9e
    .end packed-switch
.end method
