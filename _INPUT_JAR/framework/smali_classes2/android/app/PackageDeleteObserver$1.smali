.class Landroid/app/PackageDeleteObserver$1;
.super Landroid/content/pm/IPackageDeleteObserver2$Stub;
.source "PackageDeleteObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/PackageDeleteObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/PackageDeleteObserver;


# direct methods
.method constructor <init>(Landroid/app/PackageDeleteObserver;)V
    .registers 2

    .prologue
    .line 24
    iput-object p1, p0, Landroid/app/PackageDeleteObserver$1;->this$0:Landroid/app/PackageDeleteObserver;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver2$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .param p1, "basePackageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 32
    iget-object v0, p0, Landroid/app/PackageDeleteObserver$1;->this$0:Landroid/app/PackageDeleteObserver;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/PackageDeleteObserver;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    return-void
.end method

.method public onUserActionRequired(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 27
    iget-object v0, p0, Landroid/app/PackageDeleteObserver$1;->this$0:Landroid/app/PackageDeleteObserver;

    invoke-virtual {v0, p1}, Landroid/app/PackageDeleteObserver;->onUserActionRequired(Landroid/content/Intent;)V

    .line 28
    return-void
.end method
