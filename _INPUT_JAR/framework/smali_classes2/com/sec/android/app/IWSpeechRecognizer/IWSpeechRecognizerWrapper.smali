.class public Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerWrapper;
.super Ljava/lang/Object;
.source "IWSpeechRecognizerWrapper.java"


# static fields
.field private static uniqueInstance:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;
    .registers 2

    .prologue
    .line 12
    const-class v1, Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerWrapper;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerWrapper;->uniqueInstance:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    if-nez v0, :cond_11

    .line 14
    invoke-static {}, Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;->init()V

    .line 15
    new-instance v0, Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    invoke-direct {v0}, Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;-><init>()V

    sput-object v0, Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerWrapper;->uniqueInstance:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    .line 17
    :cond_11
    sget-object v0, Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerWrapper;->uniqueInstance:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    monitor-exit v1

    return-object v0

    .line 12
    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method
