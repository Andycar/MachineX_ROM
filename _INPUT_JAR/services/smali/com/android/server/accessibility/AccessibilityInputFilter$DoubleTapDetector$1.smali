.class Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector$1;
.super Landroid/os/Handler;
.source "AccessibilityInputFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;)V
    .registers 2

    .prologue
    .line 680
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector$1;->this$1:Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 682
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_18

    .line 693
    :goto_5
    :pswitch_5
    return-void

    .line 684
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector$1;->this$1:Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;

    # invokes: Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->performSingleTap()V
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->access$400(Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;)V

    goto :goto_5

    .line 687
    :pswitch_c
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector$1;->this$1:Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;

    # invokes: Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->performDoubleTap()V
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->access$500(Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;)V

    goto :goto_5

    .line 690
    :pswitch_12
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector$1;->this$1:Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;

    # invokes: Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->performRecentKeyTapAndHold()V
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->access$600(Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;)V

    goto :goto_5

    .line 682
    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_6
        :pswitch_c
        :pswitch_5
        :pswitch_12
    .end packed-switch
.end method
