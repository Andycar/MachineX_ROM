.class Lcom/android/keyguard/sec/WallpaperWidgetContainer$4;
.super Landroid/os/Handler;
.source "WallpaperWidgetContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/WallpaperWidgetContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/WallpaperWidgetContainer;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/WallpaperWidgetContainer;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer$4;->this$0:Lcom/android/keyguard/sec/WallpaperWidgetContainer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, -0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 277
    iget-object v2, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer$4;->this$0:Lcom/android/keyguard/sec/WallpaperWidgetContainer;

    invoke-static {v2}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->access$400(Lcom/android/keyguard/sec/WallpaperWidgetContainer;)Landroid/os/PowerManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 278
    iget-object v2, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer$4;->this$0:Lcom/android/keyguard/sec/WallpaperWidgetContainer;

    invoke-static {v2}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->access$400(Lcom/android/keyguard/sec/WallpaperWidgetContainer;)Landroid/os/PowerManager;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 280
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 306
    const-string v2, "WallpaperWidgetContainer"

    const-string v3, "unknown msg type"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :goto_0
    return-void

    .line 282
    :pswitch_0
    const-string v2, "WallpaperWidgetContainer"

    const-string v3, "MSG_EXPANDING"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v2, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer$4;->this$0:Lcom/android/keyguard/sec/WallpaperWidgetContainer;

    invoke-static {v2, v4}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->access$500(Lcom/android/keyguard/sec/WallpaperWidgetContainer;I)V

    .line 284
    iget-object v2, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer$4;->this$0:Lcom/android/keyguard/sec/WallpaperWidgetContainer;

    invoke-static {v2}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->access$600(Lcom/android/keyguard/sec/WallpaperWidgetContainer;)V

    goto :goto_0

    .line 287
    :pswitch_1
    const-string v2, "WallpaperWidgetContainer"

    const-string v4, "MSG_EXPANDED"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v2, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer$4;->this$0:Lcom/android/keyguard/sec/WallpaperWidgetContainer;

    invoke-static {v2, v3}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->access$700(Lcom/android/keyguard/sec/WallpaperWidgetContainer;I)V

    goto :goto_0

    .line 291
    :pswitch_2
    iget-object v2, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer$4;->this$0:Lcom/android/keyguard/sec/WallpaperWidgetContainer;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->access$700(Lcom/android/keyguard/sec/WallpaperWidgetContainer;I)V

    goto :goto_0

    .line 294
    :pswitch_3
    const-string v2, "WallpaperWidgetContainer"

    const-string v5, "MSG_PINUP"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.keyguardwallpaperupdator.wallpaper_pinup"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 296
    .local v1, "pinUpIntent":Landroid/content/Intent;
    const-string v5, "req"

    iget-object v2, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer$4;->this$0:Lcom/android/keyguard/sec/WallpaperWidgetContainer;

    invoke-static {v2}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->access$000(Lcom/android/keyguard/sec/WallpaperWidgetContainer;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 297
    iget-object v2, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer$4;->this$0:Lcom/android/keyguard/sec/WallpaperWidgetContainer;

    invoke-static {v2}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->access$800(Lcom/android/keyguard/sec/WallpaperWidgetContainer;)Landroid/content/Context;

    move-result-object v2

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 298
    iget-object v2, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer$4;->this$0:Lcom/android/keyguard/sec/WallpaperWidgetContainer;

    iget-object v5, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer$4;->this$0:Lcom/android/keyguard/sec/WallpaperWidgetContainer;

    invoke-static {v5}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->access$000(Lcom/android/keyguard/sec/WallpaperWidgetContainer;)Z

    move-result v5

    if-nez v5, :cond_2

    :goto_2
    invoke-static {v2, v4}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->access$900(Lcom/android/keyguard/sec/WallpaperWidgetContainer;Z)V

    goto :goto_0

    :cond_1
    move v2, v4

    .line 296
    goto :goto_1

    :cond_2
    move v4, v3

    .line 298
    goto :goto_2

    .line 301
    .end local v1    # "pinUpIntent":Landroid/content/Intent;
    :pswitch_4
    const-string v2, "WallpaperWidgetContainer"

    const-string v3, "MSG_NEXT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.android.keyguardwallpaperupdator.next_wallpaper_changing"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 303
    .local v0, "nextIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer$4;->this$0:Lcom/android/keyguard/sec/WallpaperWidgetContainer;

    invoke-static {v2}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->access$800(Lcom/android/keyguard/sec/WallpaperWidgetContainer;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 280
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
