.class Lcom/sec/android/sviewcover/SViewCoverWidget$Clock$2;
.super Landroid/content/BroadcastReceiver;
.source "SViewCoverWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;


# direct methods
.method constructor <init>(Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    const/16 v6, 0x12c2

    .line 146
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$100()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 147
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive() : intent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "clock.date_format_changed"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 151
    :cond_1
    const-string v3, "time-zone"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, "tz":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive() : ACTION_TIMEZONE_CHANGED : time-zone ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .end local v2    # "tz":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;

    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->access$000(Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;)V

    .line 156
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 157
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;

    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->access$300(Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 158
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;

    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->access$300(Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 159
    :cond_3
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;

    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->access$300(Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;

    invoke-static {v4}, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->access$300(Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v6, 0x7d0

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 164
    :cond_4
    const-string v3, "com.bst.action.PICKUP_FESTIVAL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 165
    const-string v3, "festivalString"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "festival":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;

    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->access$400(Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;)Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 168
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;

    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->access$400(Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 170
    invoke-static {p1, v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->getFestivalIcon(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 171
    .local v1, "festivalIcon":I
    if-eqz v1, :cond_5

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;

    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->access$500(Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "festival_effect_lockscreen_wallpaper"

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_5

    .line 172
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;

    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->access$400(Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 173
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;

    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->access$400(Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 176
    :cond_5
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_PICKUP_FESTIVAL_DAY "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;

    invoke-static {v5}, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->access$400(Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .end local v0    # "festival":Ljava/lang/String;
    .end local v1    # "festivalIcon":I
    :cond_6
    :goto_0
    return-void

    .line 178
    :cond_7
    const-string v3, "com.bst.action.PICKUP_COMMON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 179
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;

    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->access$400(Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;)Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 180
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;

    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->access$400(Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 181
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ACTION_PICKUP_COMMON_DAY "

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
