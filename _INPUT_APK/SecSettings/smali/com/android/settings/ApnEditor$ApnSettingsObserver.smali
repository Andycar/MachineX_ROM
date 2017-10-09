.class Lcom/android/settings/ApnEditor$ApnSettingsObserver;
.super Landroid/database/ContentObserver;
.source "ApnEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ApnEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApnSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ApnEditor;


# direct methods
.method public constructor <init>(Lcom/android/settings/ApnEditor;Landroid/os/Handler;)V
    .locals 3
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/settings/ApnEditor$ApnSettingsObserver;->this$0:Lcom/android/settings/ApnEditor;

    .line 245
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 246
    invoke-virtual {p1}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 247
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/android/settings/ApnEditor;->access$000(Lcom/android/settings/ApnEditor;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 248
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 251
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 252
    if-nez p1, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/settings/ApnEditor$ApnSettingsObserver;->this$0:Lcom/android/settings/ApnEditor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/ApnEditor;->access$102(Lcom/android/settings/ApnEditor;Z)Z

    .line 255
    :cond_0
    return-void
.end method
