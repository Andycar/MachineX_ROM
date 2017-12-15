.class Landroid/widget/TextView$Marquee$3;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView$Marquee;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TextView$Marquee;


# direct methods
.method constructor <init>(Landroid/widget/TextView$Marquee;)V
    .registers 2

    .prologue
    .line 11420
    iput-object p1, p0, Landroid/widget/TextView$Marquee$3;->this$0:Landroid/widget/TextView$Marquee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .registers 5
    .param p1, "frameTimeNanos"    # J

    .prologue
    .line 11423
    iget-object v0, p0, Landroid/widget/TextView$Marquee$3;->this$0:Landroid/widget/TextView$Marquee;

    # getter for: Landroid/widget/TextView$Marquee;->mStatus:B
    invoke-static {v0}, Landroid/widget/TextView$Marquee;->access$600(Landroid/widget/TextView$Marquee;)B

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_21

    .line 11424
    iget-object v0, p0, Landroid/widget/TextView$Marquee$3;->this$0:Landroid/widget/TextView$Marquee;

    # getter for: Landroid/widget/TextView$Marquee;->mRepeatLimit:I
    invoke-static {v0}, Landroid/widget/TextView$Marquee;->access$900(Landroid/widget/TextView$Marquee;)I

    move-result v0

    if-ltz v0, :cond_16

    .line 11425
    iget-object v0, p0, Landroid/widget/TextView$Marquee$3;->this$0:Landroid/widget/TextView$Marquee;

    # operator-- for: Landroid/widget/TextView$Marquee;->mRepeatLimit:I
    invoke-static {v0}, Landroid/widget/TextView$Marquee;->access$910(Landroid/widget/TextView$Marquee;)I

    .line 11427
    :cond_16
    iget-object v0, p0, Landroid/widget/TextView$Marquee$3;->this$0:Landroid/widget/TextView$Marquee;

    iget-object v1, p0, Landroid/widget/TextView$Marquee$3;->this$0:Landroid/widget/TextView$Marquee;

    # getter for: Landroid/widget/TextView$Marquee;->mRepeatLimit:I
    invoke-static {v1}, Landroid/widget/TextView$Marquee;->access$900(Landroid/widget/TextView$Marquee;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView$Marquee;->start(I)V

    .line 11429
    :cond_21
    return-void
.end method
