.class Lcom/android/settings/fmm/RemoteControls$PreferenceListener;
.super Ljava/lang/Object;
.source "RemoteControls.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fmm/RemoteControls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreferenceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fmm/RemoteControls;


# direct methods
.method private constructor <init>(Lcom/android/settings/fmm/RemoteControls;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/settings/fmm/RemoteControls$PreferenceListener;->this$0:Lcom/android/settings/fmm/RemoteControls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/fmm/RemoteControls;Lcom/android/settings/fmm/RemoteControls$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/fmm/RemoteControls;
    .param p2, "x1"    # Lcom/android/settings/fmm/RemoteControls$1;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/settings/fmm/RemoteControls$PreferenceListener;-><init>(Lcom/android/settings/fmm/RemoteControls;)V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 108
    const-string v0, "pref_fmm"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/settings/fmm/RemoteControls$PreferenceListener;->this$0:Lcom/android/settings/fmm/RemoteControls;

    invoke-static {v0}, Lcom/android/settings/fmm/RemoteControls;->access$200(Lcom/android/settings/fmm/RemoteControls;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_fmm"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/android/settings/fmm/RemoteControls$PreferenceListener;->this$0:Lcom/android/settings/fmm/RemoteControls;

    invoke-static {v0}, Lcom/android/settings/fmm/RemoteControls;->access$100(Lcom/android/settings/fmm/RemoteControls;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fmm/RemoteControls$PreferenceListener;->this$0:Lcom/android/settings/fmm/RemoteControls;

    invoke-static {v0}, Lcom/android/settings/fmm/RemoteControls;->access$100(Lcom/android/settings/fmm/RemoteControls;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0
.end method
