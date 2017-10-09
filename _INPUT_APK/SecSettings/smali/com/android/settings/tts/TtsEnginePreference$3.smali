.class Lcom/android/settings/tts/TtsEnginePreference$3;
.super Ljava/lang/Object;
.source "TtsEnginePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/tts/TtsEnginePreference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/tts/TtsEnginePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/tts/TtsEnginePreference;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/settings/tts/TtsEnginePreference$3;->this$0:Lcom/android/settings/tts/TtsEnginePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 170
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 171
    .local v2, "args":Landroid/os/Bundle;
    const-string v0, "name"

    iget-object v1, p0, Lcom/android/settings/tts/TtsEnginePreference$3;->this$0:Lcom/android/settings/tts/TtsEnginePreference;

    invoke-static {v1}, Lcom/android/settings/tts/TtsEnginePreference;->access$100(Lcom/android/settings/tts/TtsEnginePreference;)Landroid/speech/tts/TextToSpeech$EngineInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v0, "label"

    iget-object v1, p0, Lcom/android/settings/tts/TtsEnginePreference$3;->this$0:Lcom/android/settings/tts/TtsEnginePreference;

    invoke-static {v1}, Lcom/android/settings/tts/TtsEnginePreference;->access$100(Lcom/android/settings/tts/TtsEnginePreference;)Landroid/speech/tts/TextToSpeech$EngineInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference$3;->this$0:Lcom/android/settings/tts/TtsEnginePreference;

    invoke-static {v0}, Lcom/android/settings/tts/TtsEnginePreference;->access$200(Lcom/android/settings/tts/TtsEnginePreference;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    const-string v0, "voices"

    iget-object v1, p0, Lcom/android/settings/tts/TtsEnginePreference$3;->this$0:Lcom/android/settings/tts/TtsEnginePreference;

    invoke-static {v1}, Lcom/android/settings/tts/TtsEnginePreference;->access$200(Lcom/android/settings/tts/TtsEnginePreference;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference$3;->this$0:Lcom/android/settings/tts/TtsEnginePreference;

    invoke-static {v0}, Lcom/android/settings/tts/TtsEnginePreference;->access$300(Lcom/android/settings/tts/TtsEnginePreference;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference$3;->this$0:Lcom/android/settings/tts/TtsEnginePreference;

    invoke-static {v0}, Lcom/android/settings/tts/TtsEnginePreference;->access$400(Lcom/android/settings/tts/TtsEnginePreference;)Lcom/android/settings/SettingsActivity;

    move-result-object v0

    const-class v1, Lcom/android/settings/tts/TtsEngineSettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/android/settings/tts/TtsEnginePreference$3;->this$0:Lcom/android/settings/tts/TtsEnginePreference;

    invoke-static {v4}, Lcom/android/settings/tts/TtsEnginePreference;->access$100(Lcom/android/settings/tts/TtsEnginePreference;)Landroid/speech/tts/TextToSpeech$EngineInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 190
    :goto_0
    return-void

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference$3;->this$0:Lcom/android/settings/tts/TtsEnginePreference;

    invoke-static {v0}, Lcom/android/settings/tts/TtsEnginePreference;->access$500(Lcom/android/settings/tts/TtsEnginePreference;)Landroid/preference/PreferenceActivity;

    move-result-object v0

    const-class v1, Lcom/android/settings/tts/TtsEngineSettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/tts/TtsEnginePreference$3;->this$0:Lcom/android/settings/tts/TtsEnginePreference;

    invoke-static {v3}, Lcom/android/settings/tts/TtsEnginePreference;->access$100(Lcom/android/settings/tts/TtsEnginePreference;)Landroid/speech/tts/TextToSpeech$EngineInfo;

    move-result-object v3

    iget-object v4, v3, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    move v3, v6

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0
.end method
