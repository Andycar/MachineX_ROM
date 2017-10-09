.class Lcom/android/keyguard/sec/KeyguardVoiceEngineThread$1;
.super Landroid/os/Handler;
.source "KeyguardVoiceEngineThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 196
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 282
    const-string v3, "KeyguardVoiceEngineThread"

    const-string v4, "Sent MSG cannot be handled here"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 199
    :sswitch_0
    :try_start_0
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->access$000(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->init()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "KeyguardVoiceEngineThread"

    const-string v4, "Error while initializing WakeUpCmdRecognizer"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 206
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_1
    :try_start_1
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->access$000(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->access$100(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->access$200(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;)Landroid/os/PowerManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->access$300(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;)Landroid/app/KeyguardManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 210
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->access$102(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;Z)Z

    .line 211
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->access$400(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;Z)V

    .line 212
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->access$000(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->startVerify(I)I

    .line 213
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->access$500(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;)Lcom/android/keyguard/sec/KeyguardVoiceWrapper$WakeUpCommandCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$WakeUpCommandCallback;->refreshVoiceUnlockHelpText()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 216
    :catch_1
    move-exception v0

    .line 217
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v3, "KeyguardVoiceEngineThread"

    const-string v4, "Error while startVerify WakeUpCmdRecognizer"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 222
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_2
    :try_start_2
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->access$000(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->access$100(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;)Z

    move-result v4

    if-ne v4, v3, :cond_0

    .line 223
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->access$000(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->stopVerify()I

    .line 224
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->access$102(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;Z)Z

    .line 225
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->access$400(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 227
    :catch_2
    move-exception v0

    .line 228
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v3, "KeyguardVoiceEngineThread"

    const-string v4, "Error while terminateVerify WakeUpCmdRecognizer"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 233
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_3
    :try_start_3
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->access$000(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 234
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->access$100(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 235
    const-string v3, "KeyguardVoiceEngineThread"

    const-string v4, "cleanUp stopVerify WakeUpCmdRecognizer"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->access$000(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->stopVerify()I

    .line 237
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->access$102(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;Z)Z

    .line 239
    :cond_1
    const-string v3, "KeyguardVoiceEngineThread"

    const-string v4, "cleanUp destroy WakeUpCmdRecognizer"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->access$000(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->destroy()V

    .line 241
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->access$002(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 243
    :catch_3
    move-exception v0

    .line 244
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v3, "KeyguardVoiceEngineThread"

    const-string v4, "Error while terminating WakeUpCmdRecognizer"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 249
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_4
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    invoke-static {v3, v4}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->access$602(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;Z)Z

    .line 250
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->removeAllMsgs()V

    .line 251
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->quit()V

    .line 252
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->access$700(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;)V

    goto/16 :goto_0

    .line 255
    :sswitch_5
    const/4 v2, 0x0

    .line 256
    .local v2, "tmpIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    invoke-static {v5}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->access$000(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->choiceMultipleWakeUpIntent(I)Landroid/content/Intent;

    move-result-object v2

    .line 257
    if-eqz v2, :cond_3

    .line 258
    const/high16 v5, 0x10200000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 259
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v3, :cond_2

    .line 260
    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    invoke-static {v5}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->access$800(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;)Z

    move-result v1

    .line 262
    .local v1, "isSecureLock":Z
    const-string v5, "isSecure"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 264
    const-string v5, "AUTO_LISTEN"

    if-nez v1, :cond_4

    :goto_1
    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 272
    .end local v1    # "isSecureLock":Z
    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->access$900(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 276
    :cond_3
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->access$1000(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;)V

    goto/16 :goto_0

    .restart local v1    # "isSecureLock":Z
    :cond_4
    move v3, v4

    .line 264
    goto :goto_1

    .line 279
    .end local v1    # "isSecureLock":Z
    .end local v2    # "tmpIntent":Landroid/content/Intent;
    :sswitch_6
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->setVoiceRecognitionFailCue()V

    goto/16 :goto_0

    .line 196
    nop

    :sswitch_data_0
    .sparse-switch
        0x6e -> :sswitch_0
        0x78 -> :sswitch_1
        0x82 -> :sswitch_2
        0x8c -> :sswitch_3
        0x96 -> :sswitch_4
        0xa0 -> :sswitch_5
        0xaa -> :sswitch_6
    .end sparse-switch
.end method
