.class Lcom/android/systemui/qs/QSTileView$H;
.super Landroid/os/Handler;
.source "QSTileView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSTileView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# static fields
.field private static final STATE_CHANGED:I = 0x1

.field private static final TEXT_SIZE_CHANGED:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSTileView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTileView;)V
    .locals 1

    .prologue
    .line 594
    iput-object p1, p0, Lcom/android/systemui/qs/QSTileView$H;->this$0:Lcom/android/systemui/qs/QSTileView;

    .line 595
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 596
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 599
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 600
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView$H;->this$0:Lcom/android/systemui/qs/QSTileView;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/qs/QSTile$State;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/QSTileView;->handleStateChanged(Lcom/android/systemui/qs/QSTile$State;)V

    .line 604
    :cond_0
    :goto_0
    return-void

    .line 601
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 602
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView$H;->this$0:Lcom/android/systemui/qs/QSTileView;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/qs/QSTile$State;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/QSTileView;->handleTextSizeChanged(Lcom/android/systemui/qs/QSTile$State;)V

    goto :goto_0
.end method
