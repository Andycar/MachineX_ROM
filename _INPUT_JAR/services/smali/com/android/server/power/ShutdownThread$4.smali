.class final Lcom/android/server/power/ShutdownThread$4;
.super Lcom/samsung/android/cover/CoverManager$StateListener;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 430
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .registers 8
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 433
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    .line 434
    .local v0, "newCoverState":Z
    # getter for: Lcom/android/server/power/ShutdownThread;->coverOpen:Z
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$100()Z

    move-result v1

    if-eq v1, v0, :cond_2c

    # getter for: Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/Dialog;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$200()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_2c

    .line 435
    const-string v1, "ShutdownThread"

    const-string v2, "cover state : %b"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    # getter for: Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/Dialog;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$200()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 438
    :cond_2c
    # setter for: Lcom/android/server/power/ShutdownThread;->coverOpen:Z
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$102(Z)Z

    .line 439
    return-void
.end method
