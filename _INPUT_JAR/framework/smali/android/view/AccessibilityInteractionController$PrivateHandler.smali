.class Landroid/view/AccessibilityInteractionController$PrivateHandler;
.super Landroid/os/Handler;
.source "AccessibilityInteractionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/AccessibilityInteractionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrivateHandler"
.end annotation


# static fields
.field private static final MSG_COMPUTE_CLICK_POINT_IN_SCREEN:I = 0x7

.field private static final MSG_FIND_ACCESSIBILITY_NODE_INFOS_BY_VIEW_ID:I = 0x3

.field private static final MSG_FIND_ACCESSIBILITY_NODE_INFO_BY_ACCESSIBILITY_ID:I = 0x2

.field private static final MSG_FIND_ACCESSIBILITY_NODE_INFO_BY_TEXT:I = 0x4

.field private static final MSG_FIND_FOCUS:I = 0x5

.field private static final MSG_FOCUS_SEARCH:I = 0x6

.field private static final MSG_PERFORM_ACCESSIBILITY_ACTION:I = 0x1


# instance fields
.field final synthetic this$0:Landroid/view/AccessibilityInteractionController;


# direct methods
.method public constructor <init>(Landroid/view/AccessibilityInteractionController;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1204
    iput-object p1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    .line 1205
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1206
    return-void
.end method


# virtual methods
.method public getMessageName(Landroid/os/Message;)Ljava/lang/String;
    .registers 6
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 1210
    iget v0, p1, Landroid/os/Message;->what:I

    .line 1211
    .local v0, "type":I
    packed-switch v0, :pswitch_data_34

    .line 1227
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown message type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1213
    :pswitch_1e
    const-string v1, "MSG_PERFORM_ACCESSIBILITY_ACTION"

    .line 1225
    :goto_20
    return-object v1

    .line 1215
    :pswitch_21
    const-string v1, "MSG_FIND_ACCESSIBILITY_NODE_INFO_BY_ACCESSIBILITY_ID"

    goto :goto_20

    .line 1217
    :pswitch_24
    const-string v1, "MSG_FIND_ACCESSIBILITY_NODE_INFOS_BY_VIEW_ID"

    goto :goto_20

    .line 1219
    :pswitch_27
    const-string v1, "MSG_FIND_ACCESSIBILITY_NODE_INFO_BY_TEXT"

    goto :goto_20

    .line 1221
    :pswitch_2a
    const-string v1, "MSG_FIND_FOCUS"

    goto :goto_20

    .line 1223
    :pswitch_2d
    const-string v1, "MSG_FOCUS_SEARCH"

    goto :goto_20

    .line 1225
    :pswitch_30
    const-string v1, "MSG_COMPUTE_CLICK_POINT_IN_SCREEN"

    goto :goto_20

    .line 1211
    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_21
        :pswitch_24
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
        :pswitch_30
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 1233
    iget v0, p1, Landroid/os/Message;->what:I

    .line 1234
    .local v0, "type":I
    packed-switch v0, :pswitch_data_48

    .line 1257
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown message type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1236
    :pswitch_1e
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    # invokes: Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfoByAccessibilityIdUiThread(Landroid/os/Message;)V
    invoke-static {v1, p1}, Landroid/view/AccessibilityInteractionController;->access$400(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V

    .line 1259
    :goto_23
    return-void

    .line 1239
    :pswitch_24
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    # invokes: Landroid/view/AccessibilityInteractionController;->perfromAccessibilityActionUiThread(Landroid/os/Message;)V
    invoke-static {v1, p1}, Landroid/view/AccessibilityInteractionController;->access$500(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V

    goto :goto_23

    .line 1242
    :pswitch_2a
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    # invokes: Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfosByViewIdUiThread(Landroid/os/Message;)V
    invoke-static {v1, p1}, Landroid/view/AccessibilityInteractionController;->access$600(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V

    goto :goto_23

    .line 1245
    :pswitch_30
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    # invokes: Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfosByTextUiThread(Landroid/os/Message;)V
    invoke-static {v1, p1}, Landroid/view/AccessibilityInteractionController;->access$700(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V

    goto :goto_23

    .line 1248
    :pswitch_36
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    # invokes: Landroid/view/AccessibilityInteractionController;->findFocusUiThread(Landroid/os/Message;)V
    invoke-static {v1, p1}, Landroid/view/AccessibilityInteractionController;->access$800(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V

    goto :goto_23

    .line 1251
    :pswitch_3c
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    # invokes: Landroid/view/AccessibilityInteractionController;->focusSearchUiThread(Landroid/os/Message;)V
    invoke-static {v1, p1}, Landroid/view/AccessibilityInteractionController;->access$900(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V

    goto :goto_23

    .line 1254
    :pswitch_42
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    # invokes: Landroid/view/AccessibilityInteractionController;->computeClickPointInScreenUiThread(Landroid/os/Message;)V
    invoke-static {v1, p1}, Landroid/view/AccessibilityInteractionController;->access$1000(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V

    goto :goto_23

    .line 1234
    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_24
        :pswitch_1e
        :pswitch_2a
        :pswitch_30
        :pswitch_36
        :pswitch_3c
        :pswitch_42
    .end packed-switch
.end method
