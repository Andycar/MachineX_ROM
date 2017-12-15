.class Landroid/view/LayoutInflater$BlinkLayout;
.super Landroid/widget/FrameLayout;
.source "LayoutInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/LayoutInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BlinkLayout"
.end annotation


# static fields
.field private static final BLINK_DELAY:I = 0x1f4

.field private static final MESSAGE_BLINK:I = 0x42


# instance fields
.field private mBlink:Z

.field private mBlinkState:Z

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 986
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 987
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Landroid/view/LayoutInflater$BlinkLayout$1;

    invoke-direct {v1, p0}, Landroid/view/LayoutInflater$BlinkLayout$1;-><init>(Landroid/view/LayoutInflater$BlinkLayout;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/view/LayoutInflater$BlinkLayout;->mHandler:Landroid/os/Handler;

    .line 1001
    return-void
.end method

.method static synthetic access$000(Landroid/view/LayoutInflater$BlinkLayout;)Z
    .registers 2
    .param p0, "x0"    # Landroid/view/LayoutInflater$BlinkLayout;

    .prologue
    .line 977
    iget-boolean v0, p0, Landroid/view/LayoutInflater$BlinkLayout;->mBlink:Z

    return v0
.end method

.method static synthetic access$100(Landroid/view/LayoutInflater$BlinkLayout;)Z
    .registers 2
    .param p0, "x0"    # Landroid/view/LayoutInflater$BlinkLayout;

    .prologue
    .line 977
    iget-boolean v0, p0, Landroid/view/LayoutInflater$BlinkLayout;->mBlinkState:Z

    return v0
.end method

.method static synthetic access$102(Landroid/view/LayoutInflater$BlinkLayout;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/view/LayoutInflater$BlinkLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 977
    iput-boolean p1, p0, Landroid/view/LayoutInflater$BlinkLayout;->mBlinkState:Z

    return p1
.end method

.method static synthetic access$200(Landroid/view/LayoutInflater$BlinkLayout;)V
    .registers 1
    .param p0, "x0"    # Landroid/view/LayoutInflater$BlinkLayout;

    .prologue
    .line 977
    invoke-direct {p0}, Landroid/view/LayoutInflater$BlinkLayout;->makeBlink()V

    return-void
.end method

.method private makeBlink()V
    .registers 5

    .prologue
    .line 1004
    iget-object v1, p0, Landroid/view/LayoutInflater$BlinkLayout;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x42

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1005
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/view/LayoutInflater$BlinkLayout;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1006
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1030
    iget-boolean v0, p0, Landroid/view/LayoutInflater$BlinkLayout;->mBlinkState:Z

    if-eqz v0, :cond_7

    .line 1031
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1033
    :cond_7
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 1010
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1012
    iput-boolean v0, p0, Landroid/view/LayoutInflater$BlinkLayout;->mBlink:Z

    .line 1013
    iput-boolean v0, p0, Landroid/view/LayoutInflater$BlinkLayout;->mBlinkState:Z

    .line 1015
    invoke-direct {p0}, Landroid/view/LayoutInflater$BlinkLayout;->makeBlink()V

    .line 1016
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 1020
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1022
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/LayoutInflater$BlinkLayout;->mBlink:Z

    .line 1023
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/LayoutInflater$BlinkLayout;->mBlinkState:Z

    .line 1025
    iget-object v0, p0, Landroid/view/LayoutInflater$BlinkLayout;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1026
    return-void
.end method
