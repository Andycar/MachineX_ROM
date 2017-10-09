.class public Lcom/samsung/voiceshell/VoiceEngineWrapper;
.super Ljava/lang/Object;
.source "VoiceEngineWrapper.java"


# static fields
.field private static uniqueInstance:Lcom/samsung/voiceshell/VoiceEngine;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/voiceshell/VoiceEngine;
    .registers 3

    .prologue
    .line 23
    const-class v1, Lcom/samsung/voiceshell/VoiceEngineWrapper;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/samsung/voiceshell/VoiceEngineWrapper;->uniqueInstance:Lcom/samsung/voiceshell/VoiceEngine;

    if-nez v0, :cond_1c

    .line 27
    const-string v0, "VoiceEngineWrapper"

    const-string v2, "getInstance() : make new VoiceEngine"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-static {}, Lcom/samsung/voiceshell/VoiceEngine;->init()V

    .line 33
    new-instance v0, Lcom/samsung/voiceshell/VoiceEngine;

    invoke-direct {v0}, Lcom/samsung/voiceshell/VoiceEngine;-><init>()V

    sput-object v0, Lcom/samsung/voiceshell/VoiceEngineWrapper;->uniqueInstance:Lcom/samsung/voiceshell/VoiceEngine;

    .line 47
    :goto_18
    sget-object v0, Lcom/samsung/voiceshell/VoiceEngineWrapper;->uniqueInstance:Lcom/samsung/voiceshell/VoiceEngine;
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_24

    monitor-exit v1

    return-object v0

    .line 41
    :cond_1c
    :try_start_1c
    const-string v0, "VoiceEngineWrapper"

    const-string v2, "getInstance() : get existed VoiceEngine"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_24

    goto :goto_18

    .line 23
    :catchall_24
    move-exception v0

    monitor-exit v1

    throw v0
.end method
