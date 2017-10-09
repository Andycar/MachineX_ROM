.class Lcom/android/settings/AirViewSettings$10;
.super Ljava/lang/Object;
.source "AirViewSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AirViewSettings;->showAirCommoandDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AirViewSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/AirViewSettings;)V
    .locals 0

    .prologue
    .line 616
    iput-object p1, p0, Lcom/android/settings/AirViewSettings$10;->this$0:Lcom/android/settings/AirViewSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 618
    iget-object v0, p0, Lcom/android/settings/AirViewSettings$10;->this$0:Lcom/android/settings/AirViewSettings;

    invoke-static {v0}, Lcom/android/settings/AirViewSettings;->access$000(Lcom/android/settings/AirViewSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_view_mode"

    sget v2, Lcom/android/settings/Utils;->FINGER_AIR_VIEW_MODE:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 619
    iget-object v0, p0, Lcom/android/settings/AirViewSettings$10;->this$0:Lcom/android/settings/AirViewSettings;

    invoke-static {v0}, Lcom/android/settings/AirViewSettings;->access$300(Lcom/android/settings/AirViewSettings;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/Utils;->FINGER_AIR_VIEW_MODE:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->SetAirViewMasterValue(Landroid/content/Context;I)V

    .line 621
    const-string v0, "AirViewSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URI_AIR_VIEW_MODE was changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/settings/Utils;->FINGER_AIR_VIEW_MODE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    iget-object v0, p0, Lcom/android/settings/AirViewSettings$10;->this$0:Lcom/android/settings/AirViewSettings;

    invoke-static {v0}, Lcom/android/settings/AirViewSettings;->access$900(Lcom/android/settings/AirViewSettings;)Landroid/preference/ListPreference;

    move-result-object v0

    sget v1, Lcom/android/settings/Utils;->FINGER_AIR_VIEW_MODE:I

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 623
    iget-object v0, p0, Lcom/android/settings/AirViewSettings$10;->this$0:Lcom/android/settings/AirViewSettings;

    invoke-static {v0}, Lcom/android/settings/AirViewSettings;->access$1000(Lcom/android/settings/AirViewSettings;)V

    .line 624
    iget-object v0, p0, Lcom/android/settings/AirViewSettings$10;->this$0:Lcom/android/settings/AirViewSettings;

    invoke-static {v0}, Lcom/android/settings/AirViewSettings;->access$500(Lcom/android/settings/AirViewSettings;)V

    .line 625
    return-void
.end method
