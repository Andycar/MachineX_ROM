.class Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$30;
.super Ljava/lang/Object;
.source "TwToolBoxFloatingViewer.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->goToPositionOneShot(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;


# direct methods
.method constructor <init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .registers 2

    .prologue
    .line 1500
    iput-object p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$30;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1503
    :try_start_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1504
    .local v1, "value":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1505
    .local v0, "aniCenterY":I
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$30;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # setter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterY:I
    invoke-static {v2, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$5502(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;I)I

    .line 1506
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$30;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    invoke-virtual {v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->invalidate()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    .line 1509
    .end local v0    # "aniCenterY":I
    .end local v1    # "value":Ljava/lang/Integer;
    :goto_14
    return-void

    .line 1507
    :catch_15
    move-exception v2

    goto :goto_14
.end method
