.class public Lcom/android/systemui/recents/misc/DebugTrigger;
.super Ljava/lang/Object;
.source "DebugTrigger.java"


# instance fields
.field mHandler:Landroid/os/Handler;

.field mLastKeyCode:I

.field mLastKeyCodeTime:J

.field mTriggeredRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "triggeredRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/misc/DebugTrigger;->mHandler:Landroid/os/Handler;

    .line 38
    iput-object p1, p0, Lcom/android/systemui/recents/misc/DebugTrigger;->mTriggeredRunnable:Ljava/lang/Runnable;

    .line 39
    return-void
.end method


# virtual methods
.method public onKeyEvent(I)V
    .locals 0
    .param p1, "keyCode"    # I

    .prologue
    .line 52
    return-void
.end method

.method reset()V
    .locals 2

    .prologue
    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/recents/misc/DebugTrigger;->mLastKeyCode:I

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/recents/misc/DebugTrigger;->mLastKeyCodeTime:J

    .line 45
    return-void
.end method
