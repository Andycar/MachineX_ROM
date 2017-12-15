.class Landroid/app/trust/TrustManager$2;
.super Landroid/os/Handler;
.source "TrustManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/trust/TrustManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/trust/TrustManager;


# direct methods
.method constructor <init>(Landroid/app/trust/TrustManager;Landroid/os/Looper;)V
    .registers 3
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 141
    iput-object p1, p0, Landroid/app/trust/TrustManager$2;->this$0:Landroid/app/trust/TrustManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 144
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_3e

    .line 155
    :goto_7
    return-void

    .line 146
    :pswitch_8
    invoke-virtual {p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_29

    invoke-virtual {p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "initiatedByUser"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    move v0, v2

    .line 148
    .local v0, "initiatedByUser":Z
    :goto_1b
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/trust/TrustManager$TrustListener;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_2b

    :goto_23
    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v2, v3, v0}, Landroid/app/trust/TrustManager$TrustListener;->onTrustChanged(ZIZ)V

    goto :goto_7

    .end local v0    # "initiatedByUser":Z
    :cond_29
    move v0, v3

    .line 146
    goto :goto_1b

    .restart local v0    # "initiatedByUser":Z
    :cond_2b
    move v2, v3

    .line 148
    goto :goto_23

    .line 153
    .end local v0    # "initiatedByUser":Z
    :pswitch_2d
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/trust/TrustManager$TrustListener;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_3b

    :goto_35
    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v2, v3}, Landroid/app/trust/TrustManager$TrustListener;->onTrustManagedChanged(ZI)V

    goto :goto_7

    :cond_3b
    move v2, v3

    goto :goto_35

    .line 144
    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_8
        :pswitch_2d
    .end packed-switch
.end method
