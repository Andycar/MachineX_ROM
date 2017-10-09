.class Lcom/android/settings/wifi/IwlanEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "IwlanEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/IwlanEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/IwlanEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/IwlanEnabler;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const v9, 0x7f0a166e

    const v8, 0x7f0a1667

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 175
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 179
    const-string v4, "networkInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 181
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v4, v5}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$000(Lcom/android/settings/wifi/IwlanEnabler;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 183
    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$100(Lcom/android/settings/wifi/IwlanEnabler;)I

    move-result v4

    if-nez v4, :cond_0

    .line 187
    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$200(Lcom/android/settings/wifi/IwlanEnabler;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 189
    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$300(Lcom/android/settings/wifi/IwlanEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 285
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return-void

    .line 193
    .restart local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_1
    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$300(Lcom/android/settings/wifi/IwlanEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 199
    :cond_2
    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$000(Lcom/android/settings/wifi/IwlanEnabler;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 201
    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$300(Lcom/android/settings/wifi/IwlanEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 203
    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$300(Lcom/android/settings/wifi/IwlanEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 205
    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$400(Lcom/android/settings/wifi/IwlanEnabler;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$500(Lcom/android/settings/wifi/IwlanEnabler;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 207
    const/4 v3, 0x0

    .line 209
    .local v3, "str":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$400(Lcom/android/settings/wifi/IwlanEnabler;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    invoke-static {v5}, Lcom/android/settings/wifi/IwlanEnabler;->access$500(Lcom/android/settings/wifi/IwlanEnabler;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 211
    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$600(Lcom/android/settings/wifi/IwlanEnabler;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 219
    :goto_1
    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$300(Lcom/android/settings/wifi/IwlanEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    invoke-static {v6}, Lcom/android/settings/wifi/IwlanEnabler;->access$600(Lcom/android/settings/wifi/IwlanEnabler;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 225
    .end local v3    # "str":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    invoke-static {v4, v7}, Lcom/android/settings/wifi/IwlanEnabler;->access$102(Lcom/android/settings/wifi/IwlanEnabler;I)I

    goto/16 :goto_0

    .line 215
    .restart local v3    # "str":Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$400(Lcom/android/settings/wifi/IwlanEnabler;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 231
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v3    # "str":Ljava/lang/String;
    :cond_5
    const-string v4, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 233
    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$000(Lcom/android/settings/wifi/IwlanEnabler;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 235
    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$300(Lcom/android/settings/wifi/IwlanEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 237
    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$300(Lcom/android/settings/wifi/IwlanEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 239
    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$400(Lcom/android/settings/wifi/IwlanEnabler;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$500(Lcom/android/settings/wifi/IwlanEnabler;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 241
    const/4 v3, 0x0

    .line 243
    .restart local v3    # "str":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$400(Lcom/android/settings/wifi/IwlanEnabler;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    invoke-static {v5}, Lcom/android/settings/wifi/IwlanEnabler;->access$500(Lcom/android/settings/wifi/IwlanEnabler;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 245
    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$600(Lcom/android/settings/wifi/IwlanEnabler;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 253
    :goto_2
    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$300(Lcom/android/settings/wifi/IwlanEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    invoke-static {v6}, Lcom/android/settings/wifi/IwlanEnabler;->access$600(Lcom/android/settings/wifi/IwlanEnabler;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 259
    .end local v3    # "str":Ljava/lang/String;
    :cond_6
    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    invoke-static {v4, v7}, Lcom/android/settings/wifi/IwlanEnabler;->access$102(Lcom/android/settings/wifi/IwlanEnabler;I)I

    goto/16 :goto_0

    .line 249
    .restart local v3    # "str":Ljava/lang/String;
    :cond_7
    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$400(Lcom/android/settings/wifi/IwlanEnabler;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 263
    .end local v3    # "str":Ljava/lang/String;
    :cond_8
    const-string v4, "vpn.connectivity"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "connection_state"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 265
    const-string v4, "connection_state"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 267
    .local v2, "state":Ljava/lang/String;
    if-eqz v2, :cond_9

    const-string v4, "CONNECTED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 269
    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    invoke-static {v4, v6}, Lcom/android/settings/wifi/IwlanEnabler;->access$702(Lcom/android/settings/wifi/IwlanEnabler;Z)Z

    .line 271
    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$300(Lcom/android/settings/wifi/IwlanEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 275
    :cond_9
    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    invoke-static {v4, v7}, Lcom/android/settings/wifi/IwlanEnabler;->access$702(Lcom/android/settings/wifi/IwlanEnabler;Z)Z

    goto/16 :goto_0

    .line 279
    .end local v2    # "state":Ljava/lang/String;
    :cond_a
    const-string v4, "action.iwlan.connectivity"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 281
    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    invoke-virtual {v4, p2}, Lcom/android/settings/wifi/IwlanEnabler;->updataIwlanNetworks(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
