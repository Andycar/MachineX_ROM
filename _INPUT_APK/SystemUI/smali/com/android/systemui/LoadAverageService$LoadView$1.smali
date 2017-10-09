.class Lcom/android/systemui/LoadAverageService$LoadView$1;
.super Landroid/os/Handler;
.source "LoadAverageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/LoadAverageService$LoadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/LoadAverageService$LoadView;


# direct methods
.method constructor <init>(Lcom/android/systemui/LoadAverageService$LoadView;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/systemui/LoadAverageService$LoadView$1;->this$1:Lcom/android/systemui/LoadAverageService$LoadView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 64
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_0

    .line 65
    iget-object v1, p0, Lcom/android/systemui/LoadAverageService$LoadView$1;->this$1:Lcom/android/systemui/LoadAverageService$LoadView;

    invoke-static {v1}, Lcom/android/systemui/LoadAverageService$LoadView;->access$000(Lcom/android/systemui/LoadAverageService$LoadView;)Lcom/android/systemui/LoadAverageService$CpuTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/LoadAverageService$CpuTracker;->update()V

    .line 66
    iget-object v1, p0, Lcom/android/systemui/LoadAverageService$LoadView$1;->this$1:Lcom/android/systemui/LoadAverageService$LoadView;

    invoke-virtual {v1}, Lcom/android/systemui/LoadAverageService$LoadView;->updateDisplay()V

    .line 67
    invoke-virtual {p0, v2}, Lcom/android/systemui/LoadAverageService$LoadView$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 68
    .local v0, "m":Landroid/os/Message;
    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/LoadAverageService$LoadView$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 70
    .end local v0    # "m":Landroid/os/Message;
    :cond_0
    return-void
.end method
