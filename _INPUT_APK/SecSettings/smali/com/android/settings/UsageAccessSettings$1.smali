.class Lcom/android/settings/UsageAccessSettings$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "UsageAccessSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UsageAccessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/UsageAccessSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/UsageAccessSettings;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lcom/android/settings/UsageAccessSettings$1;->this$0:Lcom/android/settings/UsageAccessSettings;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/settings/UsageAccessSettings$1;->this$0:Lcom/android/settings/UsageAccessSettings;

    invoke-static {v0}, Lcom/android/settings/UsageAccessSettings;->access$400(Lcom/android/settings/UsageAccessSettings;)V

    .line 371
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/settings/UsageAccessSettings$1;->this$0:Lcom/android/settings/UsageAccessSettings;

    invoke-static {v0}, Lcom/android/settings/UsageAccessSettings;->access$400(Lcom/android/settings/UsageAccessSettings;)V

    .line 376
    return-void
.end method
