.class public Lcom/android/systemui/recents/misc/DozeTrigger;
.super Ljava/lang/Object;
.source "DozeTrigger.java"


# instance fields
.field mDozeDurationSeconds:I

.field mDozeRunnable:Ljava/lang/Runnable;

.field mHandler:Landroid/os/Handler;

.field mHasTriggered:Z

.field mIsDozing:Z

.field mSleepRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(ILjava/lang/Runnable;)V
    .locals 1
    .param p1, "dozeDurationSeconds"    # I
    .param p2, "sleepRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/android/systemui/recents/misc/DozeTrigger$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/misc/DozeTrigger$1;-><init>(Lcom/android/systemui/recents/misc/DozeTrigger;)V

    iput-object v0, p0, Lcom/android/systemui/recents/misc/DozeTrigger;->mDozeRunnable:Ljava/lang/Runnable;

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/misc/DozeTrigger;->mHandler:Landroid/os/Handler;

    .line 46
    iput p1, p0, Lcom/android/systemui/recents/misc/DozeTrigger;->mDozeDurationSeconds:I

    .line 47
    iput-object p2, p0, Lcom/android/systemui/recents/misc/DozeTrigger;->mSleepRunnable:Ljava/lang/Runnable;

    .line 48
    return-void
.end method


# virtual methods
.method forcePoke()V
    .locals 4

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/systemui/recents/misc/DozeTrigger;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recents/misc/DozeTrigger;->mDozeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 72
    iget-object v0, p0, Lcom/android/systemui/recents/misc/DozeTrigger;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recents/misc/DozeTrigger;->mDozeRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/android/systemui/recents/misc/DozeTrigger;->mDozeDurationSeconds:I

    mul-int/lit16 v2, v2, 0x1f4

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/misc/DozeTrigger;->mIsDozing:Z

    .line 74
    return-void
.end method

.method public hasTriggered()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/systemui/recents/misc/DozeTrigger;->mHasTriggered:Z

    return v0
.end method

.method public isDozing()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/systemui/recents/misc/DozeTrigger;->mIsDozing:Z

    return v0
.end method

.method public poke()V
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/systemui/recents/misc/DozeTrigger;->mIsDozing:Z

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/android/systemui/recents/misc/DozeTrigger;->forcePoke()V

    .line 67
    :cond_0
    return-void
.end method

.method public startDozing()V
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/android/systemui/recents/misc/DozeTrigger;->forcePoke()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/misc/DozeTrigger;->mHasTriggered:Z

    .line 54
    return-void
.end method

.method public stopDozing()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/recents/misc/DozeTrigger;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recents/misc/DozeTrigger;->mDozeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/misc/DozeTrigger;->mIsDozing:Z

    .line 60
    return-void
.end method
