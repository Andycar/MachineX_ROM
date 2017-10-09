.class Lcom/android/settings/LaunchApplication$2;
.super Ljava/lang/Object;
.source "LaunchApplication.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/LaunchApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LaunchApplication;


# direct methods
.method constructor <init>(Lcom/android/settings/LaunchApplication;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/settings/LaunchApplication$2;->this$0:Lcom/android/settings/LaunchApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 99
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/LaunchApplication$2;->this$0:Lcom/android/settings/LaunchApplication;

    invoke-static {v1}, Lcom/android/settings/LaunchApplication;->access$000(Lcom/android/settings/LaunchApplication;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcom/android/settings/LaunchApplication$2;->this$0:Lcom/android/settings/LaunchApplication;

    invoke-static {v1}, Lcom/android/settings/LaunchApplication;->access$100(Lcom/android/settings/LaunchApplication;)V

    .line 101
    iget-object v1, p0, Lcom/android/settings/LaunchApplication$2;->this$0:Lcom/android/settings/LaunchApplication;

    invoke-static {v1}, Lcom/android/settings/LaunchApplication;->access$200(Lcom/android/settings/LaunchApplication;)V

    .line 102
    iget-object v1, p0, Lcom/android/settings/LaunchApplication$2;->this$0:Lcom/android/settings/LaunchApplication;

    invoke-virtual {v1}, Lcom/android/settings/LaunchApplication;->buildDefaultApplicationList()V

    .line 103
    return-void
.end method
