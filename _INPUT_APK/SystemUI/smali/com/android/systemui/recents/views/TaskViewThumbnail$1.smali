.class Lcom/android/systemui/recents/views/TaskViewThumbnail$1;
.super Ljava/lang/Object;
.source "TaskViewThumbnail.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/views/TaskViewThumbnail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskViewThumbnail;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskViewThumbnail;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail$1;->this$0:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 62
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail$1;->this$0:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->access$002(Lcom/android/systemui/recents/views/TaskViewThumbnail;F)F

    .line 63
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail$1;->this$0:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-static {v0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->access$100(Lcom/android/systemui/recents/views/TaskViewThumbnail;)V

    .line 64
    return-void
.end method
