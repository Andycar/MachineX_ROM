.class Lcom/android/keyguard/sec/WallpaperWidgetContainer$1;
.super Ljava/lang/Object;
.source "WallpaperWidgetContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/WallpaperWidgetContainer;->createWidgetItem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/WallpaperWidgetContainer;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/WallpaperWidgetContainer;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer$1;->this$0:Lcom/android/keyguard/sec/WallpaperWidgetContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 134
    const-string v0, "WallpaperWidgetContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pinUpClick() now="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer$1;->this$0:Lcom/android/keyguard/sec/WallpaperWidgetContainer;

    invoke-static {v2}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->access$000(Lcom/android/keyguard/sec/WallpaperWidgetContainer;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer$1;->this$0:Lcom/android/keyguard/sec/WallpaperWidgetContainer;

    invoke-static {v0}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->access$100(Lcom/android/keyguard/sec/WallpaperWidgetContainer;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 136
    return-void
.end method
