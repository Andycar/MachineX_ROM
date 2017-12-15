.class final Landroid/view/accessibility/AccessibilityManager$MyHandler;
.super Landroid/os/Handler;
.source "AccessibilityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/AccessibilityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyHandler"
.end annotation


# static fields
.field public static final MSG_NOTIFY_ACCESSIBILITY_STATE_CHANGED:I = 0x1

.field public static final MSG_NOTIFY_EXPLORATION_STATE_CHANGED:I = 0x2

.field public static final MSG_NOTIFY_HIGH_TEXT_CONTRAST_STATE_CHANGED:I = 0x3

.field public static final MSG_SET_STATE:I = 0x4


# instance fields
.field final synthetic this$0:Landroid/view/accessibility/AccessibilityManager;


# direct methods
.method public constructor <init>(Landroid/view/accessibility/AccessibilityManager;Landroid/os/Looper;)V
    .registers 5
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 688
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityManager$MyHandler;->this$0:Landroid/view/accessibility/AccessibilityManager;

    .line 689
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 690
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 694
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_2c

    .line 715
    :goto_5
    return-void

    .line 696
    :pswitch_6
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager$MyHandler;->this$0:Landroid/view/accessibility/AccessibilityManager;

    # invokes: Landroid/view/accessibility/AccessibilityManager;->handleNotifyAccessibilityStateChanged()V
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->access$000(Landroid/view/accessibility/AccessibilityManager;)V

    goto :goto_5

    .line 700
    :pswitch_c
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager$MyHandler;->this$0:Landroid/view/accessibility/AccessibilityManager;

    # invokes: Landroid/view/accessibility/AccessibilityManager;->handleNotifyTouchExplorationStateChanged()V
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->access$100(Landroid/view/accessibility/AccessibilityManager;)V

    goto :goto_5

    .line 704
    :pswitch_12
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager$MyHandler;->this$0:Landroid/view/accessibility/AccessibilityManager;

    # invokes: Landroid/view/accessibility/AccessibilityManager;->handleNotifyHighTextContrastStateChanged()V
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->access$200(Landroid/view/accessibility/AccessibilityManager;)V

    goto :goto_5

    .line 709
    :pswitch_18
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 710
    .local v0, "state":I
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager$MyHandler;->this$0:Landroid/view/accessibility/AccessibilityManager;

    # getter for: Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->access$300(Landroid/view/accessibility/AccessibilityManager;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 711
    :try_start_21
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager$MyHandler;->this$0:Landroid/view/accessibility/AccessibilityManager;

    # invokes: Landroid/view/accessibility/AccessibilityManager;->setStateLocked(I)V
    invoke-static {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->access$400(Landroid/view/accessibility/AccessibilityManager;I)V

    .line 712
    monitor-exit v2

    goto :goto_5

    :catchall_28
    move-exception v1

    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_28

    throw v1

    .line 694
    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_6
        :pswitch_c
        :pswitch_12
        :pswitch_18
    .end packed-switch
.end method
