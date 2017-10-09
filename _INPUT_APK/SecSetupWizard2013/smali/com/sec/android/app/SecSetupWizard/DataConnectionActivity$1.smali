.class Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity$1;
.super Ljava/lang/Object;
.source "DataConnectionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 76
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;

    invoke-static {v1}, Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;->access$000(Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;

    invoke-static {v1}, Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;->access$100(Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;)Lcom/sec/android/app/SecSetupWizard/LogMsg;

    move-result-object v1

    const-string v2, "DataConnectionActivity"

    const-string v3, "Data switch On"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;

    invoke-static {v1}, Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;->access$200(Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;

    invoke-static {v2}, Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;->access$200(Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;)Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 79
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 85
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;->setResult(I)V

    .line 86
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;->finish()V

    .line 87
    return-void

    .line 81
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;

    invoke-static {v1}, Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;->access$100(Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;)Lcom/sec/android/app/SecSetupWizard/LogMsg;

    move-result-object v1

    const-string v2, "DataConnectionActivity"

    const-string v3, "Data switch Off"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;

    invoke-static {v1}, Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;->access$200(Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;

    invoke-static {v2}, Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;->access$200(Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;)Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 83
    .restart local v0    # "cm":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto :goto_0
.end method
