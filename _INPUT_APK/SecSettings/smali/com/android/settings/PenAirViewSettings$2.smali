.class Lcom/android/settings/PenAirViewSettings$2;
.super Ljava/lang/Object;
.source "PenAirViewSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/PenAirViewSettings;->showAirButtonDisableDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PenAirViewSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/PenAirViewSettings;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/settings/PenAirViewSettings$2;->this$0:Lcom/android/settings/PenAirViewSettings;

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

    .line 245
    iget-object v0, p0, Lcom/android/settings/PenAirViewSettings$2;->this$0:Lcom/android/settings/PenAirViewSettings;

    invoke-virtual {v0}, Lcom/android/settings/PenAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_button_onoff"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 247
    iget-object v0, p0, Lcom/android/settings/PenAirViewSettings$2;->this$0:Lcom/android/settings/PenAirViewSettings;

    invoke-virtual {v0}, Lcom/android/settings/PenAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pen_hovering_information_preview"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 249
    return-void
.end method
