.class Landroid/graphics/drawable/Ripple$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Ripple.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/Ripple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/graphics/drawable/Ripple;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Ripple;)V
    .registers 2

    .prologue
    .line 554
    iput-object p1, p0, Landroid/graphics/drawable/Ripple$1;->this$0:Landroid/graphics/drawable/Ripple;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 557
    iget-object v0, p0, Landroid/graphics/drawable/Ripple$1;->this$0:Landroid/graphics/drawable/Ripple;

    # invokes: Landroid/graphics/drawable/Ripple;->removeSelf()V
    invoke-static {v0}, Landroid/graphics/drawable/Ripple;->access$100(Landroid/graphics/drawable/Ripple;)V

    .line 558
    return-void
.end method
