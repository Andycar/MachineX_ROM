.class Lcom/android/settings/accessibility/AccessibilitySettingsVision$14;
.super Ljava/lang/Object;
.source "AccessibilitySettingsVision.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/AccessibilitySettingsVision;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V
    .locals 0

    .prologue
    .line 1372
    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$14;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1380
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$14;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->access$2200(Lcom/android/settings/accessibility/AccessibilitySettingsVision;I)V

    .line 1381
    const-string v4, "ro.screenreader.market"

    const-string v5, "market://search?q=pname:com.google.android.marvin.talkback"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1384
    .local v3, "screenreaderMarketLink":Ljava/lang/String;
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1385
    .local v2, "marketUri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1388
    .local v1, "marketIntent":Landroid/content/Intent;
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$14;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-virtual {v4, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1392
    :goto_0
    return-void

    .line 1389
    :catch_0
    move-exception v0

    .line 1390
    .local v0, "anfe":Landroid/content/ActivityNotFoundException;
    const-string v4, "AccessibilitySettings_Vision"

    const-string v5, "Couldn\'t start play store activity"

    invoke-static {v4, v5, v0}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
