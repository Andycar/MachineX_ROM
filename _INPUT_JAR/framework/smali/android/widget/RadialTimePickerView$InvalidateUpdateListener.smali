.class Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;
.super Ljava/lang/Object;
.source "RadialTimePickerView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RadialTimePickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InvalidateUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/RadialTimePickerView;


# direct methods
.method private constructor <init>(Landroid/widget/RadialTimePickerView;)V
    .registers 2

    .prologue
    .line 1137
    iput-object p1, p0, Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/RadialTimePickerView;Landroid/widget/RadialTimePickerView$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/widget/RadialTimePickerView;
    .param p2, "x1"    # Landroid/widget/RadialTimePickerView$1;

    .prologue
    .line 1137
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;-><init>(Landroid/widget/RadialTimePickerView;)V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1140
    iget-object v0, p0, Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    .line 1141
    return-void
.end method
