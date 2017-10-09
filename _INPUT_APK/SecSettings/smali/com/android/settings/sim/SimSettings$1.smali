.class Lcom/android/settings/sim/SimSettings$1;
.super Ljava/lang/Object;
.source "SimSettings.java"

# interfaces
.implements Lcom/android/settings/notification/DropDownPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sim/SimSettings;->createDropDown(Lcom/android/settings/notification/DropDownPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sim/SimSettings;

.field final synthetic val$simPref:Lcom/android/settings/notification/DropDownPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/SimSettings;Lcom/android/settings/notification/DropDownPreference;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/settings/sim/SimSettings$1;->this$0:Lcom/android/settings/sim/SimSettings;

    iput-object p2, p0, Lcom/android/settings/sim/SimSettings$1;->val$simPref:Lcom/android/settings/notification/DropDownPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(ILjava/lang/Object;)Z
    .locals 4
    .param p1, "pos"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 264
    if-nez p2, :cond_1

    const-wide/16 v0, 0x0

    .line 266
    .end local p2    # "value":Ljava/lang/Object;
    .local v0, "subId":J
    :goto_0
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$1;->val$simPref:Lcom/android/settings/notification/DropDownPreference;

    invoke-virtual {v2}, Lcom/android/settings/notification/DropDownPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sim_cellular_data"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 267
    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(J)V

    .line 275
    :cond_0
    :goto_1
    const/4 v2, 0x1

    return v2

    .line 264
    .end local v0    # "subId":J
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    check-cast p2, Landroid/telephony/SubInfoRecord;

    .end local p2    # "value":Ljava/lang/Object;
    iget-wide v0, p2, Landroid/telephony/SubInfoRecord;->subId:J

    goto :goto_0

    .line 268
    .restart local v0    # "subId":J
    :cond_2
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$1;->val$simPref:Lcom/android/settings/notification/DropDownPreference;

    invoke-virtual {v2}, Lcom/android/settings/notification/DropDownPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sim_calls"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 269
    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->setDefaultVoiceSubId(J)V

    goto :goto_1

    .line 270
    :cond_3
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$1;->val$simPref:Lcom/android/settings/notification/DropDownPreference;

    invoke-virtual {v2}, Lcom/android/settings/notification/DropDownPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sim_sms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1
.end method
