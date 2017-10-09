.class Lcom/android/systemui/qs/tiles/WiFiHotspotTile$4;
.super Landroid/content/BroadcastReceiver;
.source "WiFiHotspotTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/WiFiHotspotTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/WiFiHotspotTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$4;->this$0:Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 352
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, "action":Ljava/lang/String;
    const-string v7, "HotspotTile"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const-string v7, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 355
    const-string v7, "wifi_state"

    const/16 v8, 0xe

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 356
    .local v6, "state":I
    const-string v7, "HotspotTile"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    packed-switch v6, :pswitch_data_0

    .line 418
    .end local v6    # "state":I
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 359
    .restart local v6    # "state":I
    :pswitch_1
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$4;->this$0:Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->access$100(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;I)V

    goto :goto_0

    .line 363
    :pswitch_2
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$4;->this$0:Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    const/4 v8, 0x2

    invoke-static {v7, v8}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->access$100(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;I)V

    goto :goto_0

    .line 368
    .end local v6    # "state":I
    :cond_1
    const-string v7, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 369
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$4;->this$0:Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    invoke-static {v7}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->access$400(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 370
    .local v4, "resolver":Landroid/content/ContentResolver;
    const-string v7, "wifi_state"

    const/4 v8, 0x4

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 372
    .restart local v6    # "state":I
    const-string v7, "wifi_ap_saved_state"

    const/4 v8, 0x0

    const/4 v9, -0x2

    invoke-static {v4, v7, v8, v9}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    .line 374
    .local v5, "savedState":I
    const-string v7, "HotspotTile"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const/4 v7, 0x1

    if-eq v6, v7, :cond_2

    const/4 v7, 0x4

    if-ne v6, v7, :cond_0

    :cond_2
    const/4 v7, 0x1

    if-ne v5, v7, :cond_0

    .line 377
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$4;->this$0:Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    invoke-static {v7}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->access$500(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "wifi"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 378
    .local v3, "mgr":Landroid/net/wifi/WifiManager;
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 379
    const-string v7, "wifi_ap_saved_state"

    const/4 v8, 0x0

    const/4 v9, -0x2

    invoke-static {v4, v7, v8, v9}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    .line 382
    .end local v3    # "mgr":Landroid/net/wifi/WifiManager;
    .end local v4    # "resolver":Landroid/content/ContentResolver;
    .end local v5    # "savedState":I
    .end local v6    # "state":I
    :cond_3
    const-string v7, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 383
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$4;->this$0:Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    invoke-static {v7, p2}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->access$600(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 384
    :cond_4
    const-string v7, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 385
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$4;->this$0:Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    invoke-static {v7}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->access$200(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)Landroid/app/AlertDialog;

    move-result-object v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$4;->this$0:Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    invoke-static {v7}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->access$200(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 386
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$4;->this$0:Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    invoke-static {v7}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->access$200(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->cancel()V

    goto/16 :goto_0

    .line 387
    :cond_5
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$4;->this$0:Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    invoke-static {v7}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->access$700(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)Landroid/app/AlertDialog;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$4;->this$0:Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    invoke-static {v7}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->access$700(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 388
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$4;->this$0:Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    invoke-static {v7}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->access$700(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->cancel()V

    goto/16 :goto_0

    .line 392
    :cond_6
    const-string v7, "android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 393
    const-string v7, "info_type"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 394
    .local v1, "extraValue":I
    const-string v7, "HotspotTile"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const/4 v7, 0x3

    if-ne v1, v7, :cond_0

    .line 396
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$4;->this$0:Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    invoke-static {v7}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->access$800(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)Lcom/android/systemui/qs/QSTile$State;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v7, v7, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_7

    const/4 v2, 0x1

    .line 397
    .local v2, "isProcessing":Z
    :goto_1
    if-eqz v2, :cond_0

    .line 398
    const-string v7, "HotspotTile"

    const-string v8, "HotSpot is processing"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$4;->this$0:Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    const/4 v8, 0x2

    invoke-static {v7, v8}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->access$100(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;I)V

    goto/16 :goto_0

    .line 396
    .end local v2    # "isProcessing":Z
    :cond_7
    const/4 v2, 0x0

    goto :goto_1

    .line 402
    .end local v1    # "extraValue":I
    :cond_8
    const-string v7, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 403
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$4;->this$0:Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    invoke-static {v7}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->access$200(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)Landroid/app/AlertDialog;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$4;->this$0:Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    invoke-static {v7}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->access$200(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 404
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$4;->this$0:Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    invoke-static {v7}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->access$200(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->cancel()V

    goto/16 :goto_0

    .line 408
    :cond_9
    const-string v7, "android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 409
    const-string v7, "called_dialog"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 410
    .restart local v1    # "extraValue":I
    const-string v8, "HotspotTile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$4;->this$0:Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    invoke-static {v7}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->access$900(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)Lcom/android/systemui/qs/QSTile$State;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v7, v7, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const/4 v7, 0x2

    if-ne v1, v7, :cond_0

    .line 412
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$4;->this$0:Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    invoke-static {v7}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->access$1000(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)Lcom/android/systemui/qs/QSTile$State;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v7, v7, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_0

    .line 413
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$4;->this$0:Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    const/4 v8, 0x2

    invoke-static {v7, v8}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->access$100(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;I)V

    goto/16 :goto_0

    .line 357
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
