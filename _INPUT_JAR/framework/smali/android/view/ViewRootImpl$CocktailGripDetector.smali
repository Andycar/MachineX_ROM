.class final Landroid/view/ViewRootImpl$CocktailGripDetector;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CocktailGripDetector"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;)V
    .registers 3

    .prologue
    .line 8027
    iput-object p1, p0, Landroid/view/ViewRootImpl$CocktailGripDetector;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8025
    const-class v0, Landroid/view/ViewRootImpl$CocktailGripDetector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl$CocktailGripDetector;->TAG:Ljava/lang/String;

    .line 8028
    return-void
.end method


# virtual methods
.method public checkGrip(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 8031
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_2e

    .line 8042
    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0

    .line 8033
    :pswitch_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    if-ne v1, v0, :cond_a

    .line 8034
    const/16 v1, 0x31

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_a

    .line 8035
    iget-object v1, p0, Landroid/view/ViewRootImpl$CocktailGripDetector;->TAG:Ljava/lang/String;

    const-string v2, "Touch Block : Grip Flag !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 8031
    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_c
    .end packed-switch
.end method
