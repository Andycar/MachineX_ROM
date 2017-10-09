.class Lcom/android/settings/AirViewSettings$4;
.super Ljava/lang/Object;
.source "AirViewSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AirViewSettings;->showAllOptionDisabledDialog()V
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
    .line 497
    iput-object p1, p0, Lcom/android/settings/AirViewSettings$4;->this$0:Lcom/android/settings/AirViewSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/settings/AirViewSettings$4;->this$0:Lcom/android/settings/AirViewSettings;

    invoke-static {v0}, Lcom/android/settings/AirViewSettings;->access$300(Lcom/android/settings/AirViewSettings;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/Utils;->MASTER_AIR_VIEW_ON:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->SetAirViewMasterValue(Landroid/content/Context;I)V

    .line 502
    iget-object v0, p0, Lcom/android/settings/AirViewSettings$4;->this$0:Lcom/android/settings/AirViewSettings;

    invoke-static {v0}, Lcom/android/settings/AirViewSettings;->access$500(Lcom/android/settings/AirViewSettings;)V

    .line 503
    return-void
.end method
