.class Lcom/android/settings/ReadingMode$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "ReadingMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ReadingMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/settings/ReadingMode;


# direct methods
.method constructor <init>(Lcom/android/settings/ReadingMode;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 446
    iput-object p1, p0, Lcom/android/settings/ReadingMode$SettingsObserver;->this$0:Lcom/android/settings/ReadingMode;

    .line 447
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 448
    iput-object p3, p0, Lcom/android/settings/ReadingMode$SettingsObserver;->mContext:Landroid/content/Context;

    .line 449
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 462
    iget-object v2, p0, Lcom/android/settings/ReadingMode$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "e_reading_display_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 463
    .local v0, "savedValue":Z
    :goto_0
    const-string v1, "ReadingMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SettingsObserver(onChange) savedValue :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget-object v1, p0, Lcom/android/settings/ReadingMode$SettingsObserver;->this$0:Lcom/android/settings/ReadingMode;

    invoke-static {v1}, Lcom/android/settings/ReadingMode;->access$200(Lcom/android/settings/ReadingMode;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 465
    iget-object v1, p0, Lcom/android/settings/ReadingMode$SettingsObserver;->this$0:Lcom/android/settings/ReadingMode;

    invoke-static {v1}, Lcom/android/settings/ReadingMode;->access$300(Lcom/android/settings/ReadingMode;)Lcom/android/settings/ReadingMode$AppListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/ReadingMode$AppListAdapter;->notifyDataSetChanged()V

    .line 466
    return-void

    .end local v0    # "savedValue":Z
    :cond_0
    move v0, v1

    .line 462
    goto :goto_0
.end method

.method startObserving()V
    .locals 3

    .prologue
    .line 452
    iget-object v1, p0, Lcom/android/settings/ReadingMode$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 453
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "e_reading_display_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 454
    return-void
.end method

.method stopObserving()V
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/settings/ReadingMode$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 458
    return-void
.end method
