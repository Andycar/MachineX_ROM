.class Lcom/android/internal/policy/impl/MultiPhoneWindow$ContentFrameDragListener;
.super Ljava/lang/Object;
.source "MultiPhoneWindow.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MultiPhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentFrameDragListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V
    .registers 2

    .prologue
    .line 1192
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ContentFrameDragListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;Lcom/android/internal/policy/impl/MultiPhoneWindow$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;
    .param p2, "x1"    # Lcom/android/internal/policy/impl/MultiPhoneWindow$1;

    .prologue
    .line 1192
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow$ContentFrameDragListener;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .registers 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/DragEvent;

    .prologue
    const/4 v2, 0x0

    const/16 v5, 0x66

    .line 1195
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ContentFrameDragListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    .line 1196
    .local v1, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_13

    .line 1234
    :cond_12
    :goto_12
    return v2

    .line 1200
    :cond_13
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 1201
    .local v0, "action":I
    packed-switch v0, :pswitch_data_76

    goto :goto_12

    .line 1204
    :pswitch_1b
    const/4 v2, 0x1

    goto :goto_12

    .line 1208
    :pswitch_1d
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ContentFrameDragListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v3, v3, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1209
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ContentFrameDragListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v3, v3, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_12

    .line 1214
    :pswitch_2f
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ContentFrameDragListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_12

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ContentFrameDragListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDragMode:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1215
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ContentFrameDragListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v3, v3, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_12

    .line 1216
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ContentFrameDragListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v3, v3, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ContentFrameDragListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v4, v4, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHandler:Landroid/os/Handler;

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v6, 0x2bc

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_12

    .line 1224
    :pswitch_5c
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ContentFrameDragListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDragMode:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1225
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ContentFrameDragListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v3, v3, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1226
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ContentFrameDragListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v3, v3, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_12

    .line 1201
    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_2f
        :pswitch_1d
        :pswitch_1d
        :pswitch_1b
        :pswitch_5c
    .end packed-switch
.end method
