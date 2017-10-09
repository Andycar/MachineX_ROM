.class Lcom/android/server/enterprise/billing/EnterpriseBillingEngine$2;
.super Landroid/content/BroadcastReceiver;
.source "EnterpriseBillingEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;)V
    .registers 2

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine$2;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "paramContext"    # Landroid/content/Context;
    .param p2, "paramIntent"    # Landroid/content/Intent;

    .prologue
    .line 194
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 196
    const-string v0, "EnterpriseBillingEngine"

    const-string v1, "ACTION_BOOT_COMPLETED"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine$2;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->handleAllprofiles()V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->access$000(Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;)V

    .line 199
    :cond_18
    return-void
.end method
