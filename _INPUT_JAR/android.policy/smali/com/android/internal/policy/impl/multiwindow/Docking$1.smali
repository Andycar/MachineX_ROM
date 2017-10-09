.class Lcom/android/internal/policy/impl/multiwindow/Docking$1;
.super Landroid/os/Handler;
.source "Docking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/multiwindow/Docking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/multiwindow/Docking;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/multiwindow/Docking;)V
    .registers 2

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/Docking;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 249
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2c

    .line 260
    :cond_5
    :goto_5
    return-void

    .line 251
    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Docking$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/Docking;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingListener:Lcom/android/internal/policy/impl/multiwindow/Docking$OnDockingListener;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/Docking;->access$000(Lcom/android/internal/policy/impl/multiwindow/Docking;)Lcom/android/internal/policy/impl/multiwindow/Docking$OnDockingListener;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 252
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Docking$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/Docking;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingListener:Lcom/android/internal/policy/impl/multiwindow/Docking$OnDockingListener;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/Docking;->access$000(Lcom/android/internal/policy/impl/multiwindow/Docking;)Lcom/android/internal/policy/impl/multiwindow/Docking$OnDockingListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/multiwindow/Docking$OnDockingListener;->onCancel()V

    .line 253
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Docking$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/Docking;

    const/4 v1, 0x1

    # setter for: Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingCanceled:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/Docking;->access$102(Lcom/android/internal/policy/impl/multiwindow/Docking;Z)Z

    .line 254
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Docking$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/Docking;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # setter for: Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingX:I
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/Docking;->access$202(Lcom/android/internal/policy/impl/multiwindow/Docking;I)I

    .line 255
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Docking$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/Docking;

    iget v1, p1, Landroid/os/Message;->arg2:I

    # setter for: Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingY:I
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/Docking;->access$302(Lcom/android/internal/policy/impl/multiwindow/Docking;I)I

    goto :goto_5

    .line 249
    :pswitch_data_2c
    .packed-switch 0x65
        :pswitch_6
    .end packed-switch
.end method
