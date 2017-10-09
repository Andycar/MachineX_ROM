.class Lcom/android/keyguard/sec/rich/SecAttributionInfoView$2;
.super Landroid/os/Handler;
.source "SecAttributionInfoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/rich/SecAttributionInfoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/rich/SecAttributionInfoView;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView$2;->this$0:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 106
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 107
    .local v0, "intent":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/content/Intent;

    if-nez v1, :cond_1

    .line 111
    .end local v0    # "intent":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 110
    .restart local v0    # "intent":Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView$2;->this$0:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    check-cast v0, Landroid/content/Intent;

    .end local v0    # "intent":Ljava/lang/Object;
    invoke-static {v1, v0, v2, v2, v2}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->access$200(Lcom/android/keyguard/sec/rich/SecAttributionInfoView;Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
