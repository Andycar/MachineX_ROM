.class Lcom/android/server/epm/overlay/ThemeManagerService$1;
.super Ljava/lang/Object;
.source "ThemeManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/epm/overlay/ThemeManagerService;->onMasterInstalled(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

.field final synthetic val$compMap:Ljava/util/HashMap;

.field final synthetic val$index:I

.field final synthetic val$masterContext:Landroid/content/Context;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$str:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/epm/overlay/ThemeManagerService;Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;I)V
    .registers 7

    .prologue
    .line 341
    iput-object p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService$1;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iput-object p2, p0, Lcom/android/server/epm/overlay/ThemeManagerService$1;->val$masterContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/epm/overlay/ThemeManagerService$1;->val$packageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/epm/overlay/ThemeManagerService$1;->val$compMap:Ljava/util/HashMap;

    iput-object p5, p0, Lcom/android/server/epm/overlay/ThemeManagerService$1;->val$str:Ljava/lang/String;

    iput p6, p0, Lcom/android/server/epm/overlay/ThemeManagerService$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService$1;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService$1;->val$masterContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService$1;->val$packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/epm/overlay/ThemeManagerService$1;->val$compMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService$1;->val$str:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iget-object v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService$1;->val$str:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService$1;->val$index:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/epm/overlay/ThemeManagerService;->installThemes(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;I)V

    .line 345
    return-void
.end method
