.class Lcom/android/systemui/recents/views/TaskViewHeader$5;
.super Ljava/lang/Object;
.source "TaskViewHeader.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/TaskViewHeader;->onTaskViewFocusChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskViewHeader;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskViewHeader;)V
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskViewHeader$5;->this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 405
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 406
    .local v0, "color":I
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader$5;->this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v1, v1, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackgroundColorDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 407
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader$5;->this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackgroundColor:I

    .line 408
    return-void
.end method
