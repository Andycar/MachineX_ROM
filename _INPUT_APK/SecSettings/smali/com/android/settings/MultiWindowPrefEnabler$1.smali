.class Lcom/android/settings/MultiWindowPrefEnabler$1;
.super Landroid/database/ContentObserver;
.source "MultiWindowPrefEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MultiWindowPrefEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MultiWindowPrefEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/MultiWindowPrefEnabler;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/settings/MultiWindowPrefEnabler$1;->this$0:Lcom/android/settings/MultiWindowPrefEnabler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/MultiWindowPrefEnabler$1;->this$0:Lcom/android/settings/MultiWindowPrefEnabler;

    invoke-virtual {v0}, Lcom/android/settings/MultiWindowPrefEnabler;->updateSwitch()V

    .line 41
    return-void
.end method
