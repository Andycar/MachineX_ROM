.class Lcom/android/settings/SViewMiniWallpaper$2;
.super Ljava/lang/Object;
.source "SViewMiniWallpaper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SViewMiniWallpaper;->configureActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SViewMiniWallpaper;


# direct methods
.method constructor <init>(Lcom/android/settings/SViewMiniWallpaper;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/settings/SViewMiniWallpaper$2;->this$0:Lcom/android/settings/SViewMiniWallpaper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/settings/SViewMiniWallpaper$2;->this$0:Lcom/android/settings/SViewMiniWallpaper;

    invoke-virtual {v0}, Lcom/android/settings/SViewMiniWallpaper;->saveDB()V

    .line 115
    iget-object v0, p0, Lcom/android/settings/SViewMiniWallpaper$2;->this$0:Lcom/android/settings/SViewMiniWallpaper;

    invoke-virtual {v0}, Lcom/android/settings/SViewMiniWallpaper;->finish()V

    .line 116
    return-void
.end method
