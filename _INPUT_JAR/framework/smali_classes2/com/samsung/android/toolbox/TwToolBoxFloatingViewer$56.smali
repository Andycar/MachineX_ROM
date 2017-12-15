.class Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$56;
.super Ljava/lang/Object;
.source "TwToolBoxFloatingViewer.java"

# interfaces
.implements Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->initializeFunctionShortcut(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;


# direct methods
.method constructor <init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .registers 2

    .prologue
    .line 2214
    iput-object p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$56;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAction()V
    .registers 7

    .prologue
    .line 2217
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$56;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEditAfterScreenCapture:I
    invoke-static {v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$6300(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1c

    .line 2218
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$56;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$56;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$3900(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "edit_after_screen_capture"

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    # setter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEditAfterScreenCapture:I
    invoke-static {v1, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$6302(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;I)I

    .line 2220
    :cond_1c
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$56;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$3900(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "edit_after_screen_capture"

    const/4 v3, 0x1

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2221
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$56;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->setVisibility(I)V

    .line 2222
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$56;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$56;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mUpdateVisibility:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v2, v4, v5}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2224
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$56;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # invokes: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->screenCapture()V
    invoke-static {v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$7600(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    .line 2226
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$56;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$56;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mScreenWriteRecovery:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$7700(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2227
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$56;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$56;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mScreenWriteRecovery:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$7700(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v2, v4, v5}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5a} :catch_5b

    .line 2231
    :goto_5a
    return-void

    .line 2228
    :catch_5b
    move-exception v0

    .line 2229
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v1, "toolbox"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ScreenWrite Runtime error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a
.end method
