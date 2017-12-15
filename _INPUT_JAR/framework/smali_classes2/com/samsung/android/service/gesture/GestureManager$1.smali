.class Lcom/samsung/android/service/gesture/GestureManager$1;
.super Landroid/content/BroadcastReceiver;
.source "GestureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/service/gesture/GestureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/service/gesture/GestureManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/service/gesture/GestureManager;)V
    .registers 2

    .prologue
    .line 69
    iput-object p1, p0, Lcom/samsung/android/service/gesture/GestureManager$1;->this$0:Lcom/samsung/android/service/gesture/GestureManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 73
    const-string v0, "GestureManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive GesutureActive :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "isActive"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.app.gestureservice.GESTURE_ACTIVE_STATUS"

    if-ne v0, v1, :cond_35

    .line 75
    const-string v0, "isActive"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 76
    iget-object v0, p0, Lcom/samsung/android/service/gesture/GestureManager$1;->this$0:Lcom/samsung/android/service/gesture/GestureManager;

    const/4 v1, 0x1

    # setter for: Lcom/samsung/android/service/gesture/GestureManager;->mGestureActive:Z
    invoke-static {v0, v1}, Lcom/samsung/android/service/gesture/GestureManager;->access$002(Lcom/samsung/android/service/gesture/GestureManager;Z)Z

    .line 82
    :cond_35
    :goto_35
    return-void

    .line 78
    :cond_36
    iget-object v0, p0, Lcom/samsung/android/service/gesture/GestureManager$1;->this$0:Lcom/samsung/android/service/gesture/GestureManager;

    # setter for: Lcom/samsung/android/service/gesture/GestureManager;->mGestureActive:Z
    invoke-static {v0, v3}, Lcom/samsung/android/service/gesture/GestureManager;->access$002(Lcom/samsung/android/service/gesture/GestureManager;Z)Z

    goto :goto_35
.end method
