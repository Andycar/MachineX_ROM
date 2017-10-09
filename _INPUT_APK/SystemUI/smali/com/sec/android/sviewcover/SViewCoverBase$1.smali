.class Lcom/sec/android/sviewcover/SViewCoverBase$1;
.super Landroid/content/BroadcastReceiver;
.source "SViewCoverBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sviewcover/SViewCoverBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/sviewcover/SViewCoverBase;


# direct methods
.method constructor <init>(Lcom/sec/android/sviewcover/SViewCoverBase;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverBase$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 63
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.samsung.cover.REMOTEVIEWS_UPDATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    const-string v2, "type"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "type":Ljava/lang/String;
    const-string v2, "shealth"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverBase$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverBase;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sec/android/sviewcover/SViewCoverBase;->access$002(Lcom/sec/android/sviewcover/SViewCoverBase;Landroid/content/Intent;)Landroid/content/Intent;

    .line 68
    const-string v2, "SViewCoverBase"

    const-string v3, ":::::::BroadcastReceiver onReceive() :::::::::: shealth"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverBase$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverBase;

    invoke-virtual {p2}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    invoke-static {v3, v2}, Lcom/sec/android/sviewcover/SViewCoverBase;->access$002(Lcom/sec/android/sviewcover/SViewCoverBase;Landroid/content/Intent;)Landroid/content/Intent;

    .line 72
    .end local v1    # "type":Ljava/lang/String;
    :cond_0
    return-void
.end method
