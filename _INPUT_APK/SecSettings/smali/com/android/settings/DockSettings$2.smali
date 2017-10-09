.class Lcom/android/settings/DockSettings$2;
.super Landroid/database/ContentObserver;
.source "DockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DockSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/settings/DockSettings$2;->this$0:Lcom/android/settings/DockSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/settings/DockSettings$2;->this$0:Lcom/android/settings/DockSettings;

    invoke-static {v0}, Lcom/android/settings/DockSettings;->access$300(Lcom/android/settings/DockSettings;)V

    .line 166
    return-void
.end method
