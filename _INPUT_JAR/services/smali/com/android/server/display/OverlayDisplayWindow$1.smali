.class Lcom/android/server/display/OverlayDisplayWindow$1;
.super Ljava/lang/Object;
.source "OverlayDisplayWindow.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/OverlayDisplayWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/OverlayDisplayWindow;


# direct methods
.method constructor <init>(Lcom/android/server/display/OverlayDisplayWindow;)V
    .registers 2

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayWindow$1;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .registers 2
    .param p1, "displayId"    # I

    .prologue
    .line 278
    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 4
    .param p1, "displayId"    # I

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow$1;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    # getter for: Lcom/android/server/display/OverlayDisplayWindow;->mDefaultDisplay:Landroid/view/Display;
    invoke-static {v0}, Lcom/android/server/display/OverlayDisplayWindow;->access$000(Lcom/android/server/display/OverlayDisplayWindow;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_2a

    .line 283
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow$1;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    # invokes: Lcom/android/server/display/OverlayDisplayWindow;->updateDefaultDisplayInfo()Z
    invoke-static {v0}, Lcom/android/server/display/OverlayDisplayWindow;->access$100(Lcom/android/server/display/OverlayDisplayWindow;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 284
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow$1;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    invoke-virtual {v0}, Lcom/android/server/display/OverlayDisplayWindow;->relayout()V

    .line 285
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow$1;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    # getter for: Lcom/android/server/display/OverlayDisplayWindow;->mListener:Lcom/android/server/display/OverlayDisplayWindow$Listener;
    invoke-static {v0}, Lcom/android/server/display/OverlayDisplayWindow;->access$300(Lcom/android/server/display/OverlayDisplayWindow;)Lcom/android/server/display/OverlayDisplayWindow$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow$1;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    # getter for: Lcom/android/server/display/OverlayDisplayWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;
    invoke-static {v1}, Lcom/android/server/display/OverlayDisplayWindow;->access$200(Lcom/android/server/display/OverlayDisplayWindow;)Landroid/view/DisplayInfo;

    move-result-object v1

    iget v1, v1, Landroid/view/DisplayInfo;->state:I

    invoke-interface {v0, v1}, Lcom/android/server/display/OverlayDisplayWindow$Listener;->onStateChanged(I)V

    .line 290
    :cond_2a
    :goto_2a
    return-void

    .line 287
    :cond_2b
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow$1;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    invoke-virtual {v0}, Lcom/android/server/display/OverlayDisplayWindow;->dismiss()V

    goto :goto_2a
.end method

.method public onDisplayRemoved(I)V
    .registers 3
    .param p1, "displayId"    # I

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow$1;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    # getter for: Lcom/android/server/display/OverlayDisplayWindow;->mDefaultDisplay:Landroid/view/Display;
    invoke-static {v0}, Lcom/android/server/display/OverlayDisplayWindow;->access$000(Lcom/android/server/display/OverlayDisplayWindow;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_11

    .line 295
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow$1;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    invoke-virtual {v0}, Lcom/android/server/display/OverlayDisplayWindow;->dismiss()V

    .line 297
    :cond_11
    return-void
.end method
