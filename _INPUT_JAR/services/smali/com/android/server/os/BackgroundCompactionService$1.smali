.class final Lcom/android/server/os/BackgroundCompactionService$1;
.super Landroid/content/BroadcastReceiver;
.source "BackgroundCompactionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/os/BackgroundCompactionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 83
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 84
    sget v0, Lcom/android/server/os/BackgroundCompactionService;->pending_job:I

    if-nez v0, :cond_16

    .line 85
    sput v2, Lcom/android/server/os/BackgroundCompactionService;->pending_job:I

    .line 86
    invoke-static {p1, v2}, Lcom/android/server/os/BackgroundCompactionService;->schedule(Landroid/content/Context;I)V

    .line 88
    :cond_16
    const/4 v0, 0x0

    sput v0, Lcom/android/server/os/BackgroundCompactionService;->display_status:I

    .line 97
    :cond_19
    :goto_19
    return-void

    .line 89
    :cond_1a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 90
    sput v2, Lcom/android/server/os/BackgroundCompactionService;->display_status:I

    goto :goto_19

    .line 91
    :cond_29
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.sm.ACTION_RAM_BGCOMPACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 92
    sget v0, Lcom/android/server/os/BackgroundCompactionService;->pending_job:I

    if-nez v0, :cond_19

    .line 93
    sput v2, Lcom/android/server/os/BackgroundCompactionService;->pending_job:I

    .line 94
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/android/server/os/BackgroundCompactionService;->schedule(Landroid/content/Context;I)V

    goto :goto_19
.end method
