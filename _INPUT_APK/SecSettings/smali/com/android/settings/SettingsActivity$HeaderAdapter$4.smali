.class Lcom/android/settings/SettingsActivity$HeaderAdapter$4;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsActivity$HeaderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsActivity$HeaderAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsActivity$HeaderAdapter;)V
    .locals 0

    .prologue
    .line 6168
    iput-object p1, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter$4;->this$0:Lcom/android/settings/SettingsActivity$HeaderAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 6172
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter$4;->this$0:Lcom/android/settings/SettingsActivity$HeaderAdapter;

    invoke-static {v0, p1}, Lcom/android/settings/SettingsActivity$HeaderAdapter;->access$700(Lcom/android/settings/SettingsActivity$HeaderAdapter;Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6173
    monitor-exit p0

    return-void

    .line 6172
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
