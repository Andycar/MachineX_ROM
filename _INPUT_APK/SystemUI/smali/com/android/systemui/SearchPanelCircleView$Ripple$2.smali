.class Lcom/android/systemui/SearchPanelCircleView$Ripple$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SearchPanelCircleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/SearchPanelCircleView$Ripple;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/SearchPanelCircleView$Ripple;


# direct methods
.method constructor <init>(Lcom/android/systemui/SearchPanelCircleView$Ripple;)V
    .locals 0

    .prologue
    .line 570
    iput-object p1, p0, Lcom/android/systemui/SearchPanelCircleView$Ripple$2;->this$1:Lcom/android/systemui/SearchPanelCircleView$Ripple;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView$Ripple$2;->this$1:Lcom/android/systemui/SearchPanelCircleView$Ripple;

    iget-object v0, v0, Lcom/android/systemui/SearchPanelCircleView$Ripple;->this$0:Lcom/android/systemui/SearchPanelCircleView;

    invoke-static {v0}, Lcom/android/systemui/SearchPanelCircleView;->access$1300(Lcom/android/systemui/SearchPanelCircleView;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/SearchPanelCircleView$Ripple$2;->this$1:Lcom/android/systemui/SearchPanelCircleView$Ripple;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 574
    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView$Ripple$2;->this$1:Lcom/android/systemui/SearchPanelCircleView$Ripple;

    iget-object v0, v0, Lcom/android/systemui/SearchPanelCircleView$Ripple;->this$0:Lcom/android/systemui/SearchPanelCircleView;

    invoke-static {v0}, Lcom/android/systemui/SearchPanelCircleView;->access$1400(Lcom/android/systemui/SearchPanelCircleView;)V

    .line 575
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView$Ripple$2;->this$1:Lcom/android/systemui/SearchPanelCircleView$Ripple;

    iget-object v0, v0, Lcom/android/systemui/SearchPanelCircleView$Ripple;->this$0:Lcom/android/systemui/SearchPanelCircleView;

    invoke-static {v0}, Lcom/android/systemui/SearchPanelCircleView;->access$1300(Lcom/android/systemui/SearchPanelCircleView;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/SearchPanelCircleView$Ripple$2;->this$1:Lcom/android/systemui/SearchPanelCircleView$Ripple;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView$Ripple$2;->this$1:Lcom/android/systemui/SearchPanelCircleView$Ripple;

    iget-object v0, v0, Lcom/android/systemui/SearchPanelCircleView$Ripple;->this$0:Lcom/android/systemui/SearchPanelCircleView;

    invoke-static {v0}, Lcom/android/systemui/SearchPanelCircleView;->access$1400(Lcom/android/systemui/SearchPanelCircleView;)V

    .line 580
    return-void
.end method
