.class Landroid/widget/TextView$Marquee$2;
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
    .line 11411
    iput-object p1, p0, Landroid/widget/TextView$Marquee$2;->this$0:Landroid/widget/TextView$Marquee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .registers 7
    .param p1, "frameTimeNanos"    # J

    .prologue
    .line 11414
    iget-object v0, p0, Landroid/widget/TextView$Marquee$2;->this$0:Landroid/widget/TextView$Marquee;

    const/4 v1, 0x2

    # setter for: Landroid/widget/TextView$Marquee;->mStatus:B
    invoke-static {v0, v1}, Landroid/widget/TextView$Marquee;->access$602(Landroid/widget/TextView$Marquee;B)B

    .line 11415
    iget-object v0, p0, Landroid/widget/TextView$Marquee$2;->this$0:Landroid/widget/TextView$Marquee;

    iget-object v1, p0, Landroid/widget/TextView$Marquee$2;->this$0:Landroid/widget/TextView$Marquee;

    # getter for: Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;
    invoke-static {v1}, Landroid/widget/TextView$Marquee;->access$800(Landroid/widget/TextView$Marquee;)Landroid/view/Choreographer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Choreographer;->getFrameTime()J

    move-result-wide v2

    # setter for: Landroid/widget/TextView$Marquee;->mLastAnimationMs:J
    invoke-static {v0, v2, v3}, Landroid/widget/TextView$Marquee;->access$702(Landroid/widget/TextView$Marquee;J)J

    .line 11416
    iget-object v0, p0, Landroid/widget/TextView$Marquee$2;->this$0:Landroid/widget/TextView$Marquee;

    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->tick()V

    .line 11417
    return-void
.end method
