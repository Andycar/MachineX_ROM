.class Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity$2;
.super Ljava/lang/Object;
.source "BackgroundTrafficActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity$2;->this$0:Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "arg0"    # Landroid/widget/CompoundButton;
    .param p2, "argSwitch"    # Z

    .prologue
    const/4 v3, 0x1

    .line 80
    if-eqz p2, :cond_0

    .line 81
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity$2;->this$0:Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bg_auto_optimization_setup"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 82
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity$2;->this$0:Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bg_traffic_service_state"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 89
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity$2;->this$0:Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bg_auto_optimization_setup"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 86
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity$2;->this$0:Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bg_traffic_service_state"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
