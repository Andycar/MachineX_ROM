.class final Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;
.super Ljava/lang/Object;
.source "OverlayMagnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/OverlayMagnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OverlayMagnifierPolicy"
.end annotation


# static fields
.field private static final LONG_HOVER_RECOGNITION_TIME:I = 0x3e8

.field private static final MESSAGE_MAGNIFIER_START:I = 0x1


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mIsMagnifying:Z

.field private mLatestMotionEvent:Landroid/view/MotionEvent;

.field private final mMagnificationSpec:Landroid/view/MagnificationSpec;

.field final synthetic this$0:Lcom/android/server/accessibility/OverlayMagnifier;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/OverlayMagnifier;)V
    .registers 3

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->this$0:Lcom/android/server/accessibility/OverlayMagnifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mIsMagnifying:Z

    .line 221
    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 223
    new-instance v0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy$1;-><init>(Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;)V

    iput-object v0, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mHandler:Landroid/os/Handler;

    .line 245
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;
    .param p1, "x1"    # Z

    .prologue
    .line 215
    iput-boolean p1, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mIsMagnifying:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;)Landroid/view/MagnificationSpec;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;)Landroid/view/MotionEvent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mLatestMotionEvent:Landroid/view/MotionEvent;

    return-object v0
.end method


# virtual methods
.method public getMagnificationSpec()Landroid/view/MagnificationSpec;
    .registers 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    return-object v0
.end method

.method public isMagnifying()Z
    .registers 2

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mIsMagnifying:Z

    return v0
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 256
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 257
    .local v0, "action":I
    packed-switch v0, :pswitch_data_30

    .line 272
    :goto_7
    :pswitch_7
    return-void

    .line 260
    :pswitch_8
    # getter for: Lcom/android/server/accessibility/OverlayMagnifier;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/OverlayMagnifier;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ACTION_HOVER_ENTER"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iput-object p1, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mLatestMotionEvent:Landroid/view/MotionEvent;

    .line 262
    iget-object v2, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 263
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_7

    .line 266
    .end local v1    # "msg":Landroid/os/Message;
    :pswitch_22
    iput-object p1, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mLatestMotionEvent:Landroid/view/MotionEvent;

    goto :goto_7

    .line 269
    :pswitch_25
    # getter for: Lcom/android/server/accessibility/OverlayMagnifier;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/OverlayMagnifier;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Overlay Magnifier end!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 257
    nop

    :pswitch_data_30
    .packed-switch 0x7
        :pswitch_22
        :pswitch_7
        :pswitch_8
        :pswitch_25
    .end packed-switch
.end method

.method public stopMagnifier()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 275
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mIsMagnifying:Z

    .line 276
    iget-object v0, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 277
    iget-object v0, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 279
    :cond_11
    return-void
.end method
