.class public Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;
.super Ljava/lang/Object;
.source "ViewAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/views/ViewAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskViewEnterContext"
.end annotation


# instance fields
.field currentStackViewCount:I

.field currentStackViewIndex:I

.field currentTaskOccludesLaunchTarget:Z

.field currentTaskRect:Landroid/graphics/Rect;

.field currentTaskTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

.field postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

.field updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 0
    .param p1, "t"    # Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    .line 49
    return-void
.end method
