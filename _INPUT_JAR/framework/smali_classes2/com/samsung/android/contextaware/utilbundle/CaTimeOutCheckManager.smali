.class public Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;
.super Ljava/lang/Object;
.source "CaTimeOutCheckManager.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserverable;


# instance fields
.field private mObserver:Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;

.field private final mTimeOut:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;I)V
    .registers 3
    .param p1, "observer"    # Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;
    .param p2, "time"    # I

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p0, p1}, Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;->registerObserver(Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;)V

    .line 44
    iput p2, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;->mTimeOut:I

    .line 45
    return-void
.end method


# virtual methods
.method public final notifyTimeOut()V
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;->mObserver:Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;

    if-eqz v0, :cond_9

    .line 100
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;->mObserver:Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;

    invoke-interface {v0}, Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;->occurTimeOut()V

    .line 102
    :cond_9
    return-void
.end method

.method public final registerObserver(Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;)V
    .registers 2
    .param p1, "observer"    # Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;->mObserver:Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;

    .line 78
    return-void
.end method

.method public final run()V
    .registers 5

    .prologue
    .line 56
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    :try_start_1
    iget v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;->mTimeOut:I

    mul-int/lit8 v2, v2, 0xa

    if-ge v1, v2, :cond_16

    .line 57
    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_c} :catch_f

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 59
    :catch_f
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "interruped"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 65
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_15
    return-void

    .line 64
    :cond_16
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;->notifyTimeOut()V

    goto :goto_15
.end method

.method public final unregisterObserver()V
    .registers 2

    .prologue
    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;->mObserver:Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;

    .line 89
    return-void
.end method
