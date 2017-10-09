.class Lcom/android/settings/deviceinfo/Status$5;
.super Landroid/os/Handler;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/Status;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/Status;)V
    .locals 0

    .prologue
    .line 477
    iput-object p1, p0, Lcom/android/settings/deviceinfo/Status$5;->this$0:Lcom/android/settings/deviceinfo/Status;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 480
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 534
    :cond_0
    :goto_0
    return-void

    .line 484
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "response"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    check-cast v5, [B

    invoke-static {v5}, Lcom/android/settings/deviceinfo/Status;->access$902([B)[B

    .line 486
    invoke-static {}, Lcom/android/settings/deviceinfo/Status;->access$900()[B

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/settings/deviceinfo/Status;->access$900()[B

    move-result-object v5

    array-length v5, v5

    if-eqz v5, :cond_0

    .line 491
    iget-object v5, p0, Lcom/android/settings/deviceinfo/Status$5;->this$0:Lcom/android/settings/deviceinfo/Status;

    iget-object v6, p0, Lcom/android/settings/deviceinfo/Status$5;->this$0:Lcom/android/settings/deviceinfo/Status;

    const-string v7, "user_name"

    invoke-virtual {v6, v7}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/settings/deviceinfo/Status;->access$1002(Lcom/android/settings/deviceinfo/Status;Landroid/preference/Preference;)Landroid/preference/Preference;

    .line 493
    iget-object v5, p0, Lcom/android/settings/deviceinfo/Status$5;->this$0:Lcom/android/settings/deviceinfo/Status;

    invoke-static {}, Lcom/android/settings/deviceinfo/Status;->access$900()[B

    move-result-object v6

    const/4 v7, 0x0

    aget-byte v6, v6, v7

    invoke-static {v5, v6}, Lcom/android/settings/deviceinfo/Status;->access$1102(Lcom/android/settings/deviceinfo/Status;I)I

    .line 494
    const/4 v4, 0x1

    .line 498
    .local v4, "offset":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v5, p0, Lcom/android/settings/deviceinfo/Status$5;->this$0:Lcom/android/settings/deviceinfo/Status;

    invoke-static {v5}, Lcom/android/settings/deviceinfo/Status;->access$1100(Lcom/android/settings/deviceinfo/Status;)I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 499
    iget-object v5, p0, Lcom/android/settings/deviceinfo/Status$5;->this$0:Lcom/android/settings/deviceinfo/Status;

    invoke-static {}, Lcom/android/settings/deviceinfo/Status;->access$900()[B

    move-result-object v6

    add-int v7, v3, v4

    aget-byte v6, v6, v7

    int-to-char v6, v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/settings/deviceinfo/Status;->access$1284(Lcom/android/settings/deviceinfo/Status;Ljava/lang/Object;)Ljava/lang/String;

    .line 498
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 503
    :cond_1
    iget-object v5, p0, Lcom/android/settings/deviceinfo/Status$5;->this$0:Lcom/android/settings/deviceinfo/Status;

    invoke-static {v5}, Lcom/android/settings/deviceinfo/Status;->access$1200(Lcom/android/settings/deviceinfo/Status;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/deviceinfo/Status$5;->this$0:Lcom/android/settings/deviceinfo/Status;

    invoke-static {v5}, Lcom/android/settings/deviceinfo/Status;->access$1200(Lcom/android/settings/deviceinfo/Status;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4

    .line 504
    :cond_2
    iget-object v5, p0, Lcom/android/settings/deviceinfo/Status$5;->this$0:Lcom/android/settings/deviceinfo/Status;

    invoke-static {v5}, Lcom/android/settings/deviceinfo/Status;->access$1000(Lcom/android/settings/deviceinfo/Status;)Landroid/preference/Preference;

    move-result-object v5

    const-string v6, "<Not set>"

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 511
    .end local v3    # "i":I
    .end local v4    # "offset":I
    :goto_2
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "error"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 512
    .local v2, "error":I
    if-nez v2, :cond_3

    .line 518
    :cond_3
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "response"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    check-cast v0, [B

    .line 519
    .local v0, "buff":[B
    invoke-static {}, Lcom/android/settings/deviceinfo/Status;->access$900()[B

    move-result-object v5

    if-eqz v5, :cond_0

    array-length v5, v0

    if-eqz v5, :cond_0

    .line 525
    iget-object v5, p0, Lcom/android/settings/deviceinfo/Status$5;->this$0:Lcom/android/settings/deviceinfo/Status;

    invoke-static {v5, v0}, Lcom/android/settings/deviceinfo/Status;->access$1300(Lcom/android/settings/deviceinfo/Status;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 526
    .end local v0    # "buff":[B
    :catch_0
    move-exception v1

    .line 527
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "Status"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NULL VALUE :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 506
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "error":I
    .restart local v3    # "i":I
    .restart local v4    # "offset":I
    :cond_4
    iget-object v5, p0, Lcom/android/settings/deviceinfo/Status$5;->this$0:Lcom/android/settings/deviceinfo/Status;

    invoke-static {v5}, Lcom/android/settings/deviceinfo/Status;->access$1000(Lcom/android/settings/deviceinfo/Status;)Landroid/preference/Preference;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/deviceinfo/Status$5;->this$0:Lcom/android/settings/deviceinfo/Status;

    invoke-static {v6}, Lcom/android/settings/deviceinfo/Status;->access$1200(Lcom/android/settings/deviceinfo/Status;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 480
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
