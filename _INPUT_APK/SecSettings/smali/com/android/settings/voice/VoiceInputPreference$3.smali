.class Lcom/android/settings/voice/VoiceInputPreference$3;
.super Ljava/lang/Object;
.source "VoiceInputPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/voice/VoiceInputPreference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/voice/VoiceInputPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/voice/VoiceInputPreference;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/settings/voice/VoiceInputPreference$3;->this$0:Lcom/android/settings/voice/VoiceInputPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 121
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/voice/VoiceInputPreference$3;->this$0:Lcom/android/settings/voice/VoiceInputPreference;

    invoke-static {v1}, Lcom/android/settings/voice/VoiceInputPreference;->access$000(Lcom/android/settings/voice/VoiceInputPreference;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 123
    iget-object v1, p0, Lcom/android/settings/voice/VoiceInputPreference$3;->this$0:Lcom/android/settings/voice/VoiceInputPreference;

    invoke-virtual {v1}, Lcom/android/settings/voice/VoiceInputPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 124
    return-void
.end method
