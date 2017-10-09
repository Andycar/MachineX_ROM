.class Lcom/android/settings/DevelopmentSettings$1Listener;
.super Ljava/lang/Object;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DevelopmentSettings;->writeAllowFakeSignatureGlobalOption()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DevelopmentSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DevelopmentSettings;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/settings/DevelopmentSettings$1Listener;->this$0:Lcom/android/settings/DevelopmentSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 195
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings$1Listener;->this$0:Lcom/android/settings/DevelopmentSettings;

    invoke-virtual {v0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "allow_fake_signature_global"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 200
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings$1Listener;->this$0:Lcom/android/settings/DevelopmentSettings;

    invoke-virtual {v0}, Lcom/android/settings/DevelopmentSettings;->updateAllowFakeSignatureGlobalOption()V

    .line 204
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings$1Listener;->this$0:Lcom/android/settings/DevelopmentSettings;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/settings/DevelopmentSettings;->mAllowFakeSignatureGlobalDialog:Landroid/app/Dialog;

    .line 205
    return-void
.end method
