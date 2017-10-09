.class Lcom/android/systemui/statusbar/PickUpTutorial$3;
.super Ljava/lang/Object;
.source "PickUpTutorial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/PickUpTutorial;->putDownDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/PickUpTutorial;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/PickUpTutorial;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lcom/android/systemui/statusbar/PickUpTutorial$3;->this$0:Lcom/android/systemui/statusbar/PickUpTutorial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial$3;->this$0:Lcom/android/systemui/statusbar/PickUpTutorial;

    invoke-static {v0}, Lcom/android/systemui/statusbar/PickUpTutorial;->access$800(Lcom/android/systemui/statusbar/PickUpTutorial;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 380
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial$3;->this$0:Lcom/android/systemui/statusbar/PickUpTutorial;

    invoke-static {v0}, Lcom/android/systemui/statusbar/PickUpTutorial;->access$800(Lcom/android/systemui/statusbar/PickUpTutorial;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial$3;->this$0:Lcom/android/systemui/statusbar/PickUpTutorial;

    iget-object v1, v1, Lcom/android/systemui/statusbar/PickUpTutorial;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 381
    return-void
.end method
