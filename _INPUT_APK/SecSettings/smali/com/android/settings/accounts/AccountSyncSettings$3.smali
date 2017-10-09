.class Lcom/android/settings/accounts/AccountSyncSettings$3;
.super Ljava/lang/Object;
.source "AccountSyncSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/AccountSyncSettings;->cancelSyncForEnabledProviders()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/AccountSyncSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/AccountSyncSettings;)V
    .locals 0

    .prologue
    .line 721
    iput-object p1, p0, Lcom/android/settings/accounts/AccountSyncSettings$3;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 724
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings$3;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-static {v0}, Lcom/android/settings/accounts/AccountSyncSettings;->access$800(Lcom/android/settings/accounts/AccountSyncSettings;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 725
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings$3;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v0}, Lcom/android/settings/accounts/AccountSyncSettings;->onSyncStateUpdated()V

    .line 727
    :cond_0
    return-void
.end method
