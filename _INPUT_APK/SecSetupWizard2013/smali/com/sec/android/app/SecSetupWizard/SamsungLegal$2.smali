.class Lcom/sec/android/app/SecSetupWizard/SamsungLegal$2;
.super Ljava/lang/Object;
.source "SamsungLegal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/SecSetupWizard/SamsungLegal;->createThreadAndDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/SecSetupWizard/SamsungLegal;


# direct methods
.method constructor <init>(Lcom/sec/android/app/SecSetupWizard/SamsungLegal;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/sec/android/app/SecSetupWizard/SamsungLegal$2;->this$0:Lcom/sec/android/app/SecSetupWizard/SamsungLegal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/SamsungLegal$2;->this$0:Lcom/sec/android/app/SecSetupWizard/SamsungLegal;

    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/SamsungLegal$2;->this$0:Lcom/sec/android/app/SecSetupWizard/SamsungLegal;

    invoke-static {v1}, Lcom/sec/android/app/SecSetupWizard/SamsungLegal;->access$300(Lcom/sec/android/app/SecSetupWizard/SamsungLegal;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/SamsungLegal$2;->this$0:Lcom/sec/android/app/SecSetupWizard/SamsungLegal;

    invoke-static {v2}, Lcom/sec/android/app/SecSetupWizard/SamsungLegal;->access$400(Lcom/sec/android/app/SecSetupWizard/SamsungLegal;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/SecSetupWizard/Utils;->getStringFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/SecSetupWizard/SamsungLegal;->access$102(Lcom/sec/android/app/SecSetupWizard/SamsungLegal;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/SamsungLegal$2;->this$0:Lcom/sec/android/app/SecSetupWizard/SamsungLegal;

    invoke-static {v0}, Lcom/sec/android/app/SecSetupWizard/SamsungLegal;->access$500(Lcom/sec/android/app/SecSetupWizard/SamsungLegal;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 102
    return-void
.end method
