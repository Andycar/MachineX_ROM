.class Lcom/android/settings/voice/VoiceInputPreference$4;
.super Ljava/lang/Object;
.source "VoiceInputPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/voice/VoiceInputPreference;->displayAlert(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/voice/VoiceInputPreference;

.field final synthetic val$negativeOnClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/android/settings/voice/VoiceInputPreference;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/settings/voice/VoiceInputPreference$4;->this$0:Lcom/android/settings/voice/VoiceInputPreference;

    iput-object p2, p0, Lcom/android/settings/voice/VoiceInputPreference$4;->val$negativeOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/settings/voice/VoiceInputPreference$4;->val$negativeOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v1, -0x2

    invoke-interface {v0, p1, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 151
    return-void
.end method
