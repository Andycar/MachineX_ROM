.class Lcom/android/systemui/statusbar/AnimatedBrightnessIconView$1;
.super Ljava/lang/Object;
.source "AnimatedBrightnessIconView.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->setAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView$1;->this$0:Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2
    .param p1, "input"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 109
    div-float v0, p1, v1

    sub-float p1, v0, v1

    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    mul-float/2addr v0, v1

    const/4 v1, 0x0

    add-float/2addr v0, v1

    return v0
.end method
