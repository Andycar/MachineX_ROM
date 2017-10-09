.class final Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "AdaptiveDisplayColorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 391
    iput-object p1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$SettingsObserver;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    .line 392
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 393
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 6
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 397
    iget-object v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$SettingsObserver;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->DEBUG:Z
    invoke-static {v0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$800(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 398
    const-string v0, "AdaptiveDisplayColorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SettingsObserver: onChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_20
    iget-object v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$SettingsObserver;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # invokes: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->setting_is_changed()V
    invoke-static {v0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$900(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V

    .line 402
    return-void
.end method
