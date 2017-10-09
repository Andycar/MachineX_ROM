.class Lcom/android/settings/myplace/MyPlaceProfileSettings$3;
.super Ljava/lang/Object;
.source "MyPlaceProfileSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/myplace/MyPlaceProfileSettings;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V
    .locals 0

    .prologue
    .line 397
    iput-object p1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 400
    iget-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-static {v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$500(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 401
    iget-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    const v8, 0x7f0a07fb

    invoke-virtual {v7, v8}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 466
    :goto_0
    return-void

    .line 403
    :cond_0
    iget-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->isDuplicatePlaceName()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 404
    iget-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    const v8, 0x7f0a19e8

    invoke-virtual {v7, v8}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 409
    :cond_1
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 410
    .local v5, "values":Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 412
    .local v2, "timeStamp":Ljava/lang/String;
    const-string v6, "type"

    iget-object v7, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-static {v7}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$700(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 413
    iget-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-static {v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$500(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 414
    .local v3, "tmpTitle":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-static {v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$800(Lcom/android/settings/myplace/MyPlaceProfileSettings;)I

    move-result v6

    invoke-static {}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$900()I

    move-result v7

    if-ge v6, v7, :cond_2

    iget-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-static {v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$800(Lcom/android/settings/myplace/MyPlaceProfileSettings;)I

    move-result v6

    if-ltz v6, :cond_2

    .line 415
    iget-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    const v7, 0x7f0a19de

    invoke-virtual {v6, v7}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 416
    const-string v3, "Home"

    .line 427
    :cond_2
    :goto_1
    const-string v6, "profile_name"

    invoke-virtual {v5, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const-string v6, "gps_location"

    iget-object v7, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-static {v7}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$700(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const-string v6, "gps_latitude"

    iget-object v7, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-static {v7}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$700(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$200(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 431
    const-string v6, "gps_longitude"

    iget-object v7, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-static {v7}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$700(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$300(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 432
    const-string v6, "gps_map"

    iget-object v7, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-static {v7}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$700(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1000(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)[B

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 433
    const-string v6, "wifi_ap_name"

    iget-object v7, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-static {v7}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$700(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const-string v6, "wifi_bssid"

    iget-object v7, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-static {v7}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$700(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1200(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const-string v6, "wifi_frequency"

    iget-object v7, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-static {v7}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$700(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1300(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 436
    const-string v6, "wifi_auto_connect"

    iget-object v7, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-static {v7}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$700(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 437
    const-string v6, "bt_device_name"

    iget-object v7, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-static {v7}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$700(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1500(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const-string v6, "bt_mac_address"

    iget-object v7, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-static {v7}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$700(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1600(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    iget-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-static {v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$1700(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 441
    const-string v6, "timestamp"

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.settings.MYPLACE_ADDED"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 443
    .local v0, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-static {v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$1800(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "content://com.android.settings.myplace.MyPlaceProvider"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 444
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "content://com.android.settings.myplace.MyPlaceProvider/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 445
    .local v1, "temp":[Ljava/lang/String;
    aget-object v6, v1, v10

    if-eqz v6, :cond_3

    .line 446
    const-string v6, "added_id"

    aget-object v7, v1, v10

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 448
    :cond_3
    const-string v6, "uri"

    invoke-virtual {v0, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 449
    const-string v6, "timestamp"

    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 450
    iget-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 465
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "temp":[Ljava/lang/String;
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_4
    :goto_2
    iget-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->finish()V

    goto/16 :goto_0

    .line 417
    :cond_5
    iget-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    const v7, 0x7f0a19e0

    invoke-virtual {v6, v7}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 418
    const-string v3, "Car"

    goto/16 :goto_1

    .line 419
    :cond_6
    iget-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    const v7, 0x7f0a19df

    invoke-virtual {v6, v7}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 420
    const-string v3, "Office"

    goto/16 :goto_1

    .line 421
    :cond_7
    iget-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    const v7, 0x7f0a19e1

    invoke-virtual {v6, v7}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 422
    const-string v3, "Gym"

    goto/16 :goto_1

    .line 423
    :cond_8
    iget-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    const v7, 0x7f0a19e2

    invoke-virtual {v6, v7}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 424
    const-string v3, "School"

    goto/16 :goto_1

    .line 452
    :cond_9
    iget-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-static {v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$1900(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 453
    const-string v6, "timestamp"

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.settings.MYPLACE_CHANGED"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 456
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-static {v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$2000(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "content://com.android.settings.myplace.MyPlaceProvider"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-static {v9}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$800(Lcom/android/settings/myplace/MyPlaceProfileSettings;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v5, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 460
    const-string v6, "changed_id"

    iget-object v7, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-static {v7}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$800(Lcom/android/settings/myplace/MyPlaceProfileSettings;)I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 461
    const-string v6, "timestamp"

    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 462
    iget-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2
.end method
