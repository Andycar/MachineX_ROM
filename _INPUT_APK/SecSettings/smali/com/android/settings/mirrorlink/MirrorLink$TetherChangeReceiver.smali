.class Lcom/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MirrorLink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/mirrorlink/MirrorLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TetherChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/mirrorlink/MirrorLink;


# direct methods
.method private constructor <init>(Lcom/android/settings/mirrorlink/MirrorLink;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/android/settings/mirrorlink/MirrorLink;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/mirrorlink/MirrorLink;Lcom/android/settings/mirrorlink/MirrorLink$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/mirrorlink/MirrorLink;
    .param p2, "x1"    # Lcom/android/settings/mirrorlink/MirrorLink$1;

    .prologue
    .line 295
    invoke-direct {p0, p1}, Lcom/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;-><init>(Lcom/android/settings/mirrorlink/MirrorLink;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "content"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 298
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 301
    const-string v4, "availableArray"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 303
    .local v2, "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "activeArray"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 305
    .local v1, "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "erroredArray"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 307
    .local v3, "errored":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/android/settings/mirrorlink/MirrorLink;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-static {v7, v4, v5, v6}, Lcom/android/settings/mirrorlink/MirrorLink;->access$400(Lcom/android/settings/mirrorlink/MirrorLink;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 323
    .end local v1    # "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "errored":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    const-string v4, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 311
    iget-object v4, p0, Lcom/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/android/settings/mirrorlink/MirrorLink;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/settings/mirrorlink/MirrorLink;->access$502(Lcom/android/settings/mirrorlink/MirrorLink;Z)Z

    .line 312
    iget-object v4, p0, Lcom/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/android/settings/mirrorlink/MirrorLink;

    invoke-static {v4}, Lcom/android/settings/mirrorlink/MirrorLink;->access$600(Lcom/android/settings/mirrorlink/MirrorLink;)V

    goto :goto_0

    .line 313
    :cond_2
    const-string v4, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 314
    iget-object v4, p0, Lcom/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/android/settings/mirrorlink/MirrorLink;

    invoke-static {v4, v6}, Lcom/android/settings/mirrorlink/MirrorLink;->access$502(Lcom/android/settings/mirrorlink/MirrorLink;Z)Z

    .line 315
    iget-object v4, p0, Lcom/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/android/settings/mirrorlink/MirrorLink;

    invoke-static {v4}, Lcom/android/settings/mirrorlink/MirrorLink;->access$600(Lcom/android/settings/mirrorlink/MirrorLink;)V

    goto :goto_0

    .line 316
    :cond_3
    const-string v4, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 317
    iget-object v4, p0, Lcom/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/android/settings/mirrorlink/MirrorLink;

    const-string v5, "connected"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/android/settings/mirrorlink/MirrorLink;->access$702(Lcom/android/settings/mirrorlink/MirrorLink;Z)Z

    .line 318
    iget-object v4, p0, Lcom/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/android/settings/mirrorlink/MirrorLink;

    invoke-static {v4}, Lcom/android/settings/mirrorlink/MirrorLink;->access$700(Lcom/android/settings/mirrorlink/MirrorLink;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 319
    iget-object v4, p0, Lcom/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/android/settings/mirrorlink/MirrorLink;

    invoke-static {v4}, Lcom/android/settings/mirrorlink/MirrorLink;->access$800(Lcom/android/settings/mirrorlink/MirrorLink;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "usb_tethering_enabled"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 320
    :cond_4
    iget-object v4, p0, Lcom/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/android/settings/mirrorlink/MirrorLink;

    invoke-static {v4, v6}, Lcom/android/settings/mirrorlink/MirrorLink;->access$902(Lcom/android/settings/mirrorlink/MirrorLink;Z)Z

    .line 321
    iget-object v4, p0, Lcom/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/android/settings/mirrorlink/MirrorLink;

    invoke-static {v4}, Lcom/android/settings/mirrorlink/MirrorLink;->access$600(Lcom/android/settings/mirrorlink/MirrorLink;)V

    goto :goto_0
.end method
