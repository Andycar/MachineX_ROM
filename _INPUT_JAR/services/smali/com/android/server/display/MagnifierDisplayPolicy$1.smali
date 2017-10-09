.class Lcom/android/server/display/MagnifierDisplayPolicy$1;
.super Landroid/database/ContentObserver;
.source "MagnifierPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/MagnifierDisplayPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/MagnifierDisplayPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/display/MagnifierDisplayPolicy;Landroid/os/Handler;)V
    .registers 3
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 385
    iput-object p1, p0, Lcom/android/server/display/MagnifierDisplayPolicy$1;->this$0:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x0

    .line 389
    iget-object v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy$1;->this$0:Lcom/android/server/display/MagnifierDisplayPolicy;

    # getter for: Lcom/android/server/display/MagnifierDisplayPolicy;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/display/MagnifierDisplayPolicy;->access$400(Lcom/android/server/display/MagnifierDisplayPolicy;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_magnifier"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_14

    const/4 v0, 0x1

    .line 391
    .local v0, "isHoverZoom":Z
    :cond_14
    iget-object v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy$1;->this$0:Lcom/android/server/display/MagnifierDisplayPolicy;

    # getter for: Lcom/android/server/display/MagnifierDisplayPolicy;->mIsHoverZoom:Z
    invoke-static {v1}, Lcom/android/server/display/MagnifierDisplayPolicy;->access$500(Lcom/android/server/display/MagnifierDisplayPolicy;)Z

    move-result v1

    if-eq v1, v0, :cond_26

    .line 392
    iget-object v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy$1;->this$0:Lcom/android/server/display/MagnifierDisplayPolicy;

    # setter for: Lcom/android/server/display/MagnifierDisplayPolicy;->mIsHoverZoom:Z
    invoke-static {v1, v0}, Lcom/android/server/display/MagnifierDisplayPolicy;->access$502(Lcom/android/server/display/MagnifierDisplayPolicy;Z)Z

    .line 393
    iget-object v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy$1;->this$0:Lcom/android/server/display/MagnifierDisplayPolicy;

    # invokes: Lcom/android/server/display/MagnifierDisplayPolicy;->setPointMargin()V
    invoke-static {v1}, Lcom/android/server/display/MagnifierDisplayPolicy;->access$600(Lcom/android/server/display/MagnifierDisplayPolicy;)V

    .line 395
    :cond_26
    return-void
.end method
