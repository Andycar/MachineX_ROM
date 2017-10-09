.class final Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;
.super Landroid/os/Handler;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService$Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InvocationHandler"
.end annotation


# static fields
.field public static final MSG_CLEAR_ACCESSIBILITY_CACHE:I = 0x3

.field public static final MSG_ON_GESTURE:I = 0x1

.field public static final MSG_ON_KEY_EVENT:I = 0x2

.field public static final MSG_ON_KEY_EVENT_TIMEOUT:I = 0x4


# instance fields
.field final synthetic this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Landroid/os/Looper;)V
    .registers 5
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 3990
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 3991
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 3992
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 3996
    iget v4, p1, Landroid/os/Message;->what:I

    .line 3997
    .local v4, "type":I
    packed-switch v4, :pswitch_data_46

    .line 4019
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown message: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3999
    :pswitch_1e
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 4000
    .local v2, "gestureId":I
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService$Service;->notifyGestureInternal(I)V
    invoke-static {v5, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->access$4400(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)V

    .line 4022
    .end local v2    # "gestureId":I
    :goto_25
    return-void

    .line 4004
    :pswitch_26
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/KeyEvent;

    .line 4005
    .local v0, "event":Landroid/view/KeyEvent;
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 4006
    .local v3, "policyFlags":I
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService$Service;->notifyKeyEventInternal(Landroid/view/KeyEvent;I)V
    invoke-static {v5, v0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->access$4500(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Landroid/view/KeyEvent;I)V

    goto :goto_25

    .line 4010
    .end local v0    # "event":Landroid/view/KeyEvent;
    .end local v3    # "policyFlags":I
    :pswitch_32
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService$Service;->notifyClearAccessibilityCacheInternal()V
    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->access$4600(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V

    goto :goto_25

    .line 4014
    :pswitch_38
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    .line 4015
    .local v1, "eventState":Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    const/4 v6, 0x0

    iget v7, v1, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->sequence:I

    invoke-virtual {v5, v6, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->setOnKeyEventResult(ZI)V

    goto :goto_25

    .line 3997
    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_26
        :pswitch_32
        :pswitch_38
    .end packed-switch
.end method
