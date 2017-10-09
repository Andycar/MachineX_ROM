.class Lcom/android/settings/OneHandOperationSettings$5;
.super Ljava/lang/Object;
.source "OneHandOperationSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/OneHandOperationSettings;->showDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/OneHandOperationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/OneHandOperationSettings;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/settings/OneHandOperationSettings$5;->this$0:Lcom/android/settings/OneHandOperationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x0

    .line 194
    iget-object v0, p0, Lcom/android/settings/OneHandOperationSettings$5;->this$0:Lcom/android/settings/OneHandOperationSettings;

    invoke-virtual {v0}, Lcom/android/settings/OneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 195
    iget-object v0, p0, Lcom/android/settings/OneHandOperationSettings$5;->this$0:Lcom/android/settings/OneHandOperationSettings;

    invoke-virtual {v0}, Lcom/android/settings/OneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    .line 196
    iget-object v0, p0, Lcom/android/settings/OneHandOperationSettings$5;->this$0:Lcom/android/settings/OneHandOperationSettings;

    invoke-virtual {v0}, Lcom/android/settings/OneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_magnifier"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 197
    iget-object v0, p0, Lcom/android/settings/OneHandOperationSettings$5;->this$0:Lcom/android/settings/OneHandOperationSettings;

    invoke-virtual {v0}, Lcom/android/settings/OneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "any_screen_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 198
    return-void
.end method
