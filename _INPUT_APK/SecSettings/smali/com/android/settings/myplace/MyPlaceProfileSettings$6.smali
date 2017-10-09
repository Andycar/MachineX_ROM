.class Lcom/android/settings/myplace/MyPlaceProfileSettings$6;
.super Ljava/lang/Object;
.source "MyPlaceProfileSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/myplace/MyPlaceProfileSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
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
    .line 872
    iput-object p1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$6;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "selected"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 876
    const-string v1, "MyPlaceSettings"

    const-string v2, "Select method item is clicked"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$6;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$2300(Lcom/android/settings/myplace/MyPlaceProfileSettings;)I

    move-result v1

    if-ne v1, p2, :cond_0

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$6;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$2400(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 879
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$6;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-static {v1, v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$2402(Lcom/android/settings/myplace/MyPlaceProfileSettings;Z)Z

    .line 880
    if-nez p2, :cond_4

    .line 881
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$6;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->checkNetwork()Z

    move-result v1

    if-nez v1, :cond_1

    .line 882
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$6;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a19e7

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 933
    :cond_0
    :goto_0
    return-void

    .line 888
    :cond_1
    const-string v1, "MyPlaceSettings"

    const-string v2, "map is clicked. start mapview"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.myplace.SELECT_MAP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 892
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$6;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$700(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, ""

    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$6;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$700(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 894
    :cond_2
    const-string v1, "location"

    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$6;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$700(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 897
    :cond_3
    const-string v1, "map_latitude"

    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$6;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$700(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$200(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 899
    const-string v1, "map_longtitude"

    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$6;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$700(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$300(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 902
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$6;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 905
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4
    if-ne p2, v3, :cond_5

    .line 906
    const-string v1, "MyPlaceSettings"

    const-string v2, "wifi is clicked. start wifi network picker"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.PICK_WIFI_NETWORK_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 910
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$6;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v1, v0, v3}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 912
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_5
    if-ne p2, v5, :cond_7

    .line 913
    const-string v1, "MyPlaceSettings"

    const-string v2, "bt is clicked. start bt device picker"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.bluetooth.CheckBluetoothLEStateActivity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 917
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$6;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$2700(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 919
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$6;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v1, v0, v5}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 924
    :cond_6
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$6;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$6;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    const v3, 0x7f0a140f

    invoke-virtual {v2, v3}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 927
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_7
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$6;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->resetPlaceInfo()V

    .line 928
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$6;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$2800(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Landroid/preference/PreferenceScreen;

    .line 929
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$6;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$2900(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    .line 930
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto/16 :goto_0
.end method
