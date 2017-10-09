.class Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy$1;
.super Landroid/os/Handler;
.source "OverlayMagnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;)V
    .registers 2

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy$1;->this$1:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 226
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_7c

    .line 241
    :goto_5
    return-void

    .line 228
    :pswitch_6
    iget-object v1, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy$1;->this$1:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mIsMagnifying:Z
    invoke-static {v1, v2}, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->access$002(Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;Z)Z

    .line 229
    # getter for: Lcom/android/server/accessibility/OverlayMagnifier;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/OverlayMagnifier;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Overlay Magnifier start!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v1, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy$1;->this$1:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

    # getter for: Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;
    invoke-static {v1}, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->access$200(Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;)Landroid/view/MagnificationSpec;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    iput v2, v1, Landroid/view/MagnificationSpec;->scale:F

    .line 231
    iget-object v1, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy$1;->this$1:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

    # getter for: Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;
    invoke-static {v1}, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->access$200(Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;)Landroid/view/MagnificationSpec;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy$1;->this$1:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

    # getter for: Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mLatestMotionEvent:Landroid/view/MotionEvent;
    invoke-static {v2}, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->access$300(Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iput v2, v1, Landroid/view/MagnificationSpec;->offsetX:F

    .line 232
    iget-object v1, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy$1;->this$1:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

    # getter for: Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;
    invoke-static {v1}, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->access$200(Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;)Landroid/view/MagnificationSpec;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy$1;->this$1:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

    # getter for: Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mLatestMotionEvent:Landroid/view/MotionEvent;
    invoke-static {v2}, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->access$300(Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iput v2, v1, Landroid/view/MagnificationSpec;->offsetY:F

    .line 233
    # getter for: Lcom/android/server/accessibility/OverlayMagnifier;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/OverlayMagnifier;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onMotionEvent: spec="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy$1;->this$1:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

    # getter for: Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;
    invoke-static {v3}, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->access$200(Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;)Landroid/view/MagnificationSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :try_start_64
    iget-object v1, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy$1;->this$1:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

    iget-object v1, v1, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->this$0:Lcom/android/server/accessibility/OverlayMagnifier;

    # getter for: Lcom/android/server/accessibility/OverlayMagnifier;->mDisplayManager:Landroid/hardware/display/IDisplayManager;
    invoke-static {v1}, Lcom/android/server/accessibility/OverlayMagnifier;->access$400(Lcom/android/server/accessibility/OverlayMagnifier;)Landroid/hardware/display/IDisplayManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy$1;->this$1:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

    # getter for: Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;
    invoke-static {v2}, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->access$200(Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;)Landroid/view/MagnificationSpec;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/hardware/display/IDisplayManager;->setMagnificationSpec(Landroid/view/MagnificationSpec;)V
    :try_end_75
    .catch Landroid/os/RemoteException; {:try_start_64 .. :try_end_75} :catch_76

    goto :goto_5

    .line 236
    :catch_76
    move-exception v0

    .line 237
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5

    .line 226
    nop

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
