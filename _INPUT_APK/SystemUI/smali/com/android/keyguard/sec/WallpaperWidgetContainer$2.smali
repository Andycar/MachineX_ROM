.class Lcom/android/keyguard/sec/WallpaperWidgetContainer$2;
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
    .line 139
    iput-object p1, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer$2;->this$0:Lcom/android/keyguard/sec/WallpaperWidgetContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 141
    const-string v0, "WallpaperWidgetContainer"

    const-string v1, "nextClick()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer$2;->this$0:Lcom/android/keyguard/sec/WallpaperWidgetContainer;

    invoke-static {v0}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->access$100(Lcom/android/keyguard/sec/WallpaperWidgetContainer;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 143
    return-void
.end method
