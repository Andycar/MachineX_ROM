.class Landroid/graphics/drawable/RippleBackground$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RippleBackground.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/RippleBackground;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/graphics/drawable/RippleBackground;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/RippleBackground;)V
    .registers 2

    .prologue
    .line 437
    iput-object p1, p0, Landroid/graphics/drawable/RippleBackground$2;->this$0:Landroid/graphics/drawable/RippleBackground;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 440
    iget-object v0, p0, Landroid/graphics/drawable/RippleBackground$2;->this$0:Landroid/graphics/drawable/RippleBackground;

    const/4 v1, 0x0

    # setter for: Landroid/graphics/drawable/RippleBackground;->mHardwareAnimating:Z
    invoke-static {v0, v1}, Landroid/graphics/drawable/RippleBackground;->access$302(Landroid/graphics/drawable/RippleBackground;Z)Z

    .line 441
    return-void
.end method
