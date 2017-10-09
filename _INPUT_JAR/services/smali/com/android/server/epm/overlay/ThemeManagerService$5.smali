.class Lcom/android/server/epm/overlay/ThemeManagerService$5;
.super Ljava/lang/Object;
.source "ThemeManagerService.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/epm/overlay/ThemeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/epm/overlay/ThemeManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/epm/overlay/ThemeManagerService;)V
    .registers 2

    .prologue
    .line 1717
    iput-object p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService$5;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x41200000    # 10.0f

    .line 1720
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_98

    .line 1739
    :cond_c
    :goto_c
    :pswitch_c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_48

    .line 1740
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService$5;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mWindowParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v0}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$2100(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x32

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1741
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService$5;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mWindowParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v0}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$2100(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    add-int/lit16 v1, v1, -0x96

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1742
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService$5;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$1700(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService$5;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$1600(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService$5;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mWindowParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v2}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$2100(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1744
    :cond_48
    return v3

    .line 1722
    :pswitch_49
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService$5;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    # setter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mInitX:F
    invoke-static {v0, v1}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$1902(Lcom/android/server/epm/overlay/ThemeManagerService;F)F

    .line 1723
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService$5;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    # setter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mInitY:F
    invoke-static {v0, v1}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$2002(Lcom/android/server/epm/overlay/ThemeManagerService;F)F

    .line 1724
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService$5;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mViewClicked:Z
    invoke-static {v0, v1}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$1802(Lcom/android/server/epm/overlay/ThemeManagerService;Z)Z

    goto :goto_c

    .line 1730
    :pswitch_62
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService$5;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mViewClicked:Z
    invoke-static {v0}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$1800(Lcom/android/server/epm/overlay/ThemeManagerService;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService$5;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mInitX:F
    invoke-static {v0}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$1900(Lcom/android/server/epm/overlay/ThemeManagerService;)F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_90

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService$5;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mInitY:F
    invoke-static {v0}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$2000(Lcom/android/server/epm/overlay/ThemeManagerService;)F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_c

    .line 1733
    :cond_90
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService$5;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # setter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mViewClicked:Z
    invoke-static {v0, v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$1802(Lcom/android/server/epm/overlay/ThemeManagerService;Z)Z

    goto/16 :goto_c

    .line 1720
    nop

    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_49
        :pswitch_c
        :pswitch_62
        :pswitch_c
    .end packed-switch
.end method
