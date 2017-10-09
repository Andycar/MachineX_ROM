.class Lcom/android/systemui/statusbar/policy/DiagonosticAlertDialog$1;
.super Ljava/lang/Object;
.source "DiagonosticAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/DiagonosticAlertDialog;->showDiagnosticeReportStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/DiagonosticAlertDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/DiagonosticAlertDialog;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DiagonosticAlertDialog$1;->this$0:Lcom/android/systemui/statusbar/policy/DiagonosticAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    const/4 v3, 0x0

    .line 115
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DiagonosticAlertDialog$1;->this$0:Lcom/android/systemui/statusbar/policy/DiagonosticAlertDialog;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/DiagonosticAlertDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "samsung_errorlog_agree"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 116
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.DIAGNOSTIC_INFO_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "diagnostic_info_changed"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 118
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DiagonosticAlertDialog$1;->this$0:Lcom/android/systemui/statusbar/policy/DiagonosticAlertDialog;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/DiagonosticAlertDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 121
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DiagonosticAlertDialog$1;->this$0:Lcom/android/systemui/statusbar/policy/DiagonosticAlertDialog;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/DiagonosticAlertDialog;->finish()V

    .line 122
    return-void
.end method
