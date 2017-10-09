.class Lcom/android/server/LpnetManagerService$5$7;
.super Ljava/lang/Object;
.source "LpnetManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LpnetManagerService$5;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/LpnetManagerService$5;


# direct methods
.method constructor <init>(Lcom/android/server/LpnetManagerService$5;)V
    .registers 2

    .prologue
    .line 980
    iput-object p1, p0, Lcom/android/server/LpnetManagerService$5$7;->this$1:Lcom/android/server/LpnetManagerService$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 983
    iget-object v0, p0, Lcom/android/server/LpnetManagerService$5$7;->this$1:Lcom/android/server/LpnetManagerService$5;

    iget-object v0, v0, Lcom/android/server/LpnetManagerService$5;->this$0:Lcom/android/server/LpnetManagerService;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/LpnetManagerService;->freezeBasedOnLRU(Z)V
    invoke-static {v0, v1}, Lcom/android/server/LpnetManagerService;->access$5100(Lcom/android/server/LpnetManagerService;Z)V

    .line 984
    return-void
.end method
