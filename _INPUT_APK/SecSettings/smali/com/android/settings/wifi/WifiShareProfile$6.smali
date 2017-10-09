.class Lcom/android/settings/wifi/WifiShareProfile$6;
.super Ljava/lang/Object;
.source "WifiShareProfile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiShareProfile;->showAccessTimeoutAlertDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiShareProfile;

.field final synthetic val$apId:I


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiShareProfile;I)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lcom/android/settings/wifi/WifiShareProfile$6;->this$0:Lcom/android/settings/wifi/WifiShareProfile;

    iput p2, p0, Lcom/android/settings/wifi/WifiShareProfile$6;->val$apId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 370
    const-string v1, "WifiShareProfile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showAccessTimeoutAlertDialog - Selected index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareProfile$6;->this$0:Lcom/android/settings/wifi/WifiShareProfile;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiShareProfile;->access$1300(Lcom/android/settings/wifi/WifiShareProfile;)Landroid/preference/PreferenceGroup;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/wifi/WifiShareProfile$6;->val$apId:I

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;

    iput p2, v1, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->timeoutIndex:I

    .line 373
    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareProfile$6;->this$0:Lcom/android/settings/wifi/WifiShareProfile;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiShareProfile;->access$1300(Lcom/android/settings/wifi/WifiShareProfile;)Landroid/preference/PreferenceGroup;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/wifi/WifiShareProfile$6;->val$apId:I

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->refresh()V

    .line 375
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 376
    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareProfile$6;->this$0:Lcom/android/settings/wifi/WifiShareProfile;

    iget-object v2, v1, Lcom/android/settings/wifi/WifiShareProfile;->selectedApIndexes:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareProfile$6;->this$0:Lcom/android/settings/wifi/WifiShareProfile;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiShareProfile;->access$1300(Lcom/android/settings/wifi/WifiShareProfile;)Landroid/preference/PreferenceGroup;

    move-result-object v1

    iget v3, p0, Lcom/android/settings/wifi/WifiShareProfile$6;->val$apId:I

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;

    iget-object v1, v1, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->index:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareProfile$6;->this$0:Lcom/android/settings/wifi/WifiShareProfile;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiShareProfile;->access$1400(Lcom/android/settings/wifi/WifiShareProfile;)V

    .line 378
    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareProfile$6;->this$0:Lcom/android/settings/wifi/WifiShareProfile;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiShareProfile;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WIFI_SHARE_PROFILE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 379
    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareProfile$6;->this$0:Lcom/android/settings/wifi/WifiShareProfile;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiShareProfile;->finish()V

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareProfile$6;->this$0:Lcom/android/settings/wifi/WifiShareProfile;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiShareProfile;->access$1500(Lcom/android/settings/wifi/WifiShareProfile;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 383
    :catch_0
    move-exception v0

    .line 384
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-static {}, Lcom/android/settings/wifi/WifiShareProfile;->access$400()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "WifiShareProfile"

    const-string v2, "IndexOutOfBoundsException"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
