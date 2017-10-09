.class Lcom/android/systemui/recents/misc/DozeTrigger$1;
.super Ljava/lang/Object;
.source "DozeTrigger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/misc/DozeTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/misc/DozeTrigger;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/misc/DozeTrigger;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/systemui/recents/misc/DozeTrigger$1;->this$0:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/systemui/recents/misc/DozeTrigger$1;->this$0:Lcom/android/systemui/recents/misc/DozeTrigger;

    iget-object v0, v0, Lcom/android/systemui/recents/misc/DozeTrigger;->mSleepRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 39
    iget-object v0, p0, Lcom/android/systemui/recents/misc/DozeTrigger$1;->this$0:Lcom/android/systemui/recents/misc/DozeTrigger;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/recents/misc/DozeTrigger;->mIsDozing:Z

    .line 40
    iget-object v0, p0, Lcom/android/systemui/recents/misc/DozeTrigger$1;->this$0:Lcom/android/systemui/recents/misc/DozeTrigger;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/recents/misc/DozeTrigger;->mHasTriggered:Z

    .line 41
    return-void
.end method
