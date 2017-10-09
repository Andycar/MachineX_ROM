.class Lcom/android/settings/wifi/WifiShareProfile$5;
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
    .line 388
    iput-object p1, p0, Lcom/android/settings/wifi/WifiShareProfile$5;->this$0:Lcom/android/settings/wifi/WifiShareProfile;

    iput p2, p0, Lcom/android/settings/wifi/WifiShareProfile$5;->val$apId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 392
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareProfile$5;->this$0:Lcom/android/settings/wifi/WifiShareProfile;

    iget-object v2, v1, Lcom/android/settings/wifi/WifiShareProfile;->selectedApIndexes:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareProfile$5;->this$0:Lcom/android/settings/wifi/WifiShareProfile;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiShareProfile;->access$1300(Lcom/android/settings/wifi/WifiShareProfile;)Landroid/preference/PreferenceGroup;

    move-result-object v1

    iget v3, p0, Lcom/android/settings/wifi/WifiShareProfile$5;->val$apId:I

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;

    iget-object v1, v1, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->index:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-static {}, Lcom/android/settings/wifi/WifiShareProfile;->access$400()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "WifiShareProfile"

    const-string v2, "IndexOutOfBoundsException"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
