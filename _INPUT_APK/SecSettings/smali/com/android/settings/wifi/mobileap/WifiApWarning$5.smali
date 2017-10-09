.class Lcom/android/settings/wifi/mobileap/WifiApWarning$5;
.super Ljava/lang/Object;
.source "WifiApWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApWarning;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 306
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$000(Lcom/android/settings/wifi/mobileap/WifiApWarning;)I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 307
    const-string v1, "VZW"

    const-string v2, "ALL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$300(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a05ae

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 310
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    const/16 v2, 0xb

    invoke-static {v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$700(Lcom/android/settings/wifi/mobileap/WifiApWarning;I)V

    .line 311
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$400(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 312
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$400(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 360
    :cond_1
    :goto_0
    return-void

    .line 314
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$800(Lcom/android/settings/wifi/mobileap/WifiApWarning;)I

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$000(Lcom/android/settings/wifi/mobileap/WifiApWarning;)I

    move-result v1

    if-ne v1, v2, :cond_6

    .line 315
    const-string v1, "VZW"

    const-string v2, "ALL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 316
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$300(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a05b0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 318
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$400(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 319
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$400(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiManager;->setWifiIBSSEnabled(Z)Z

    .line 322
    :cond_4
    const-wide/16 v2, 0x258

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :goto_1
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$400(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 327
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$400(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 329
    :cond_5
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    goto :goto_0

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 331
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_6
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$800(Lcom/android/settings/wifi/mobileap/WifiApWarning;)I

    move-result v1

    if-ne v1, v2, :cond_9

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$000(Lcom/android/settings/wifi/mobileap/WifiApWarning;)I

    move-result v1

    if-nez v1, :cond_9

    .line 332
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$400(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 333
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$400(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 336
    :cond_7
    const-wide/16 v2, 0x258

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 340
    :goto_2
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$400(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 341
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$400(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiManager;->setWifiIBSSEnabled(Z)Z

    .line 343
    :cond_8
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    goto/16 :goto_0

    .line 337
    :catch_1
    move-exception v0

    .line 338
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 345
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_9
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$800(Lcom/android/settings/wifi/mobileap/WifiApWarning;)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$000(Lcom/android/settings/wifi/mobileap/WifiApWarning;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 346
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$900(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/ConnectivityManager;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 347
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$900(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    .line 350
    :cond_a
    const-wide/16 v2, 0x258

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 354
    :goto_3
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$400(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 355
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$400(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 357
    :cond_b
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    goto/16 :goto_0

    .line 351
    :catch_2
    move-exception v0

    .line 352
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3
.end method
