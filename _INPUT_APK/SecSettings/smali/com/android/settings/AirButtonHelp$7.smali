.class Lcom/android/settings/AirButtonHelp$7;
.super Ljava/lang/Object;
.source "AirButtonHelp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AirButtonHelp;->showAirCommandEnabledPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AirButtonHelp;


# direct methods
.method constructor <init>(Lcom/android/settings/AirButtonHelp;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/android/settings/AirButtonHelp$7;->this$0:Lcom/android/settings/AirButtonHelp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v0, 0x0

    .line 284
    iget-object v1, p0, Lcom/android/settings/AirButtonHelp$7;->this$0:Lcom/android/settings/AirButtonHelp;

    invoke-static {v1}, Lcom/android/settings/AirButtonHelp;->access$000(Lcom/android/settings/AirButtonHelp;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "air_button_onoff"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 286
    .local v0, "airViewState":Z
    :cond_0
    iget-object v1, p0, Lcom/android/settings/AirButtonHelp$7;->this$0:Lcom/android/settings/AirButtonHelp;

    invoke-static {v1}, Lcom/android/settings/AirButtonHelp;->access$100(Lcom/android/settings/AirButtonHelp;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 287
    return-void
.end method
