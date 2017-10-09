.class Lcom/android/server/epm/overlay/ThemeManagerService$2;
.super Ljava/lang/Object;
.source "ThemeManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/epm/overlay/ThemeManagerService;->getItemBitmap(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

.field final synthetic val$bitmapId:Ljava/lang/String;

.field final synthetic val$hl:Landroid/os/Handler;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$r:Landroid/content/res/Resources;

.field final synthetic val$wpm:Landroid/app/WallpaperManager;


# direct methods
.method constructor <init>(Lcom/android/server/epm/overlay/ThemeManagerService;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Landroid/app/WallpaperManager;)V
    .registers 7

    .prologue
    .line 1459
    iput-object p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService$2;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iput-object p2, p0, Lcom/android/server/epm/overlay/ThemeManagerService$2;->val$r:Landroid/content/res/Resources;

    iput-object p3, p0, Lcom/android/server/epm/overlay/ThemeManagerService$2;->val$bitmapId:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/epm/overlay/ThemeManagerService$2;->val$packageName:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/epm/overlay/ThemeManagerService$2;->val$hl:Landroid/os/Handler;

    iput-object p6, p0, Lcom/android/server/epm/overlay/ThemeManagerService$2;->val$wpm:Landroid/app/WallpaperManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 1463
    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService$2;->val$r:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/android/server/epm/overlay/ThemeManagerService$2;->val$bitmapId:Ljava/lang/String;

    const-string v4, "drawable"

    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService$2;->val$packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1464
    .local v1, "resId":I
    if-eqz v1, :cond_18

    .line 1469
    :try_start_e
    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService$2;->val$hl:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/epm/overlay/ThemeManagerService$2$1;

    invoke-direct {v3, p0, v1}, Lcom/android/server/epm/overlay/ThemeManagerService$2$1;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService$2;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_18} :catch_19

    .line 1495
    :cond_18
    :goto_18
    return-void

    .line 1488
    :catch_19
    move-exception v0

    .line 1489
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18
.end method
