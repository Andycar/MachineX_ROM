.class Lcom/android/settings/fmm/Introduction$1;
.super Ljava/lang/Object;
.source "Introduction.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fmm/Introduction;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fmm/Introduction;


# direct methods
.method constructor <init>(Lcom/android/settings/fmm/Introduction;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/settings/fmm/Introduction$1;->this$0:Lcom/android/settings/fmm/Introduction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const v3, 0x7f0a0faf

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 72
    iget-object v0, p0, Lcom/android/settings/fmm/Introduction$1;->this$0:Lcom/android/settings/fmm/Introduction;

    invoke-static {v0}, Lcom/android/settings/fmm/Introduction;->access$000(Lcom/android/settings/fmm/Introduction;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    .line 74
    .local v10, "mTime":Landroid/text/format/Time;
    invoke-virtual {v10}, Landroid/text/format/Time;->setToNow()V

    .line 75
    invoke-virtual {v10, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 76
    invoke-virtual {v10, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    iget-wide v12, v10, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v12, v13}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    add-int/lit8 v11, v0, 0x5a

    .line 78
    .local v11, "timeJulianDay":I
    iget-object v0, p0, Lcom/android/settings/fmm/Introduction$1;->this$0:Lcom/android/settings/fmm/Introduction;

    invoke-virtual {v0}, Lcom/android/settings/fmm/Introduction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 79
    .local v9, "mSharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 80
    .local v8, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v0, "pref_due_date"

    invoke-interface {v8, v0, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 81
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 84
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v9    # "mSharedPreferences":Landroid/content/SharedPreferences;
    .end local v10    # "mTime":Landroid/text/format/Time;
    .end local v11    # "timeJulianDay":I
    :cond_0
    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 85
    .local v7, "deviceType":Ljava/lang/String;
    if-eqz v7, :cond_1

    const-string v0, "tablet"

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/android/settings/fmm/Introduction$1;->this$0:Lcom/android/settings/fmm/Introduction;

    invoke-virtual {v0}, Lcom/android/settings/fmm/Introduction;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 91
    :goto_0
    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 92
    iget-object v0, p0, Lcom/android/settings/fmm/Introduction$1;->this$0:Lcom/android/settings/fmm/Introduction;

    invoke-virtual {v0}, Lcom/android/settings/fmm/Introduction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_2

    .line 93
    iget-object v0, p0, Lcom/android/settings/fmm/Introduction$1;->this$0:Lcom/android/settings/fmm/Introduction;

    invoke-virtual {v0}, Lcom/android/settings/fmm/Introduction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/fmm/TabletRemoteControls;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 109
    :goto_1
    return-void

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fmm/Introduction$1;->this$0:Lcom/android/settings/fmm/Introduction;

    invoke-virtual {v0}, Lcom/android/settings/fmm/Introduction;->finish()V

    goto :goto_0

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/android/settings/fmm/Introduction$1;->this$0:Lcom/android/settings/fmm/Introduction;

    invoke-virtual {v0}, Lcom/android/settings/fmm/Introduction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/fmm/TabletRemoteControls;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_1

    .line 100
    :cond_3
    iget-object v0, p0, Lcom/android/settings/fmm/Introduction$1;->this$0:Lcom/android/settings/fmm/Introduction;

    invoke-virtual {v0}, Lcom/android/settings/fmm/Introduction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_4

    .line 101
    iget-object v0, p0, Lcom/android/settings/fmm/Introduction$1;->this$0:Lcom/android/settings/fmm/Introduction;

    invoke-virtual {v0}, Lcom/android/settings/fmm/Introduction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/fmm/RemoteControls;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_1

    .line 104
    :cond_4
    iget-object v0, p0, Lcom/android/settings/fmm/Introduction$1;->this$0:Lcom/android/settings/fmm/Introduction;

    invoke-virtual {v0}, Lcom/android/settings/fmm/Introduction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/fmm/RemoteControls;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_1
.end method
