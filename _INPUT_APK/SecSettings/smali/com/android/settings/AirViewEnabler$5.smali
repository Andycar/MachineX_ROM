.class Lcom/android/settings/AirViewEnabler$5;
.super Ljava/lang/Object;
.source "AirViewEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AirViewEnabler;->showAllOptionDisabledDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AirViewEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/AirViewEnabler;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/settings/AirViewEnabler$5;->this$0:Lcom/android/settings/AirViewEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x0

    .line 241
    iget-object v1, p0, Lcom/android/settings/AirViewEnabler$5;->this$0:Lcom/android/settings/AirViewEnabler;

    invoke-static {v1}, Lcom/android/settings/AirViewEnabler;->access$000(Lcom/android/settings/AirViewEnabler;)Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/android/settings/Utils;->MASTER_AIR_VIEW_ON:I

    invoke-static {v1, v3}, Lcom/android/settings/Utils;->SetAirViewMasterValue(Landroid/content/Context;I)V

    .line 242
    iget-object v1, p0, Lcom/android/settings/AirViewEnabler$5;->this$0:Lcom/android/settings/AirViewEnabler;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/android/settings/AirViewEnabler;->access$400(Lcom/android/settings/AirViewEnabler;Z)V

    .line 243
    iget-object v1, p0, Lcom/android/settings/AirViewEnabler$5;->this$0:Lcom/android/settings/AirViewEnabler;

    invoke-static {v1}, Lcom/android/settings/AirViewEnabler;->access$000(Lcom/android/settings/AirViewEnabler;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 245
    .local v0, "preferenceActivity":Landroid/preference/PreferenceActivity;
    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v1

    if-nez v1, :cond_2

    .line 247
    :cond_0
    const-class v1, Lcom/android/settings/AirViewSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0a1342

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 255
    :cond_1
    :goto_0
    return-void

    .line 251
    :cond_2
    iget-object v1, p0, Lcom/android/settings/AirViewEnabler$5;->this$0:Lcom/android/settings/AirViewEnabler;

    invoke-static {v1}, Lcom/android/settings/AirViewEnabler;->access$500(Lcom/android/settings/AirViewEnabler;)Landroid/preference/PreferenceActivity$Header;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 252
    iget-object v1, p0, Lcom/android/settings/AirViewEnabler$5;->this$0:Lcom/android/settings/AirViewEnabler;

    invoke-static {v1}, Lcom/android/settings/AirViewEnabler;->access$500(Lcom/android/settings/AirViewEnabler;)Landroid/preference/PreferenceActivity$Header;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/AirViewEnabler$5;->this$0:Lcom/android/settings/AirViewEnabler;

    invoke-static {v2}, Lcom/android/settings/AirViewEnabler;->access$600(Lcom/android/settings/AirViewEnabler;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/preference/PreferenceActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    goto :goto_0
.end method
