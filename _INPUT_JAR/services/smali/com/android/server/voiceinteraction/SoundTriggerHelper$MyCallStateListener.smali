.class Lcom/android/server/voiceinteraction/SoundTriggerHelper$MyCallStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "SoundTriggerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/voiceinteraction/SoundTriggerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyCallStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/voiceinteraction/SoundTriggerHelper;


# direct methods
.method constructor <init>(Lcom/android/server/voiceinteraction/SoundTriggerHelper;)V
    .registers 2

    .prologue
    .line 553
    iput-object p1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper$MyCallStateListener;->this$0:Lcom/android/server/voiceinteraction/SoundTriggerHelper;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 6
    .param p1, "state"    # I
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper$MyCallStateListener;->this$0:Lcom/android/server/voiceinteraction/SoundTriggerHelper;

    # getter for: Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->access$000(Lcom/android/server/voiceinteraction/SoundTriggerHelper;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 558
    :try_start_7
    iget-object v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper$MyCallStateListener;->this$0:Lcom/android/server/voiceinteraction/SoundTriggerHelper;

    if-eqz p1, :cond_11

    const/4 v0, 0x1

    :goto_c
    # invokes: Lcom/android/server/voiceinteraction/SoundTriggerHelper;->onCallStateChangedLocked(Z)V
    invoke-static {v2, v0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->access$100(Lcom/android/server/voiceinteraction/SoundTriggerHelper;Z)V

    .line 559
    monitor-exit v1

    .line 560
    return-void

    .line 558
    :cond_11
    const/4 v0, 0x0

    goto :goto_c

    .line 559
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw v0
.end method
