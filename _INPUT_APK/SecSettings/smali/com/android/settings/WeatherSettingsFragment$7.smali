.class Lcom/android/settings/WeatherSettingsFragment$7;
.super Ljava/lang/Object;
.source "WeatherSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/WeatherSettingsFragment;->checkLocationAavilability()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/WeatherSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/WeatherSettingsFragment;)V
    .locals 0

    .prologue
    .line 500
    iput-object p1, p0, Lcom/android/settings/WeatherSettingsFragment$7;->this$0:Lcom/android/settings/WeatherSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/settings/WeatherSettingsFragment$7;->this$0:Lcom/android/settings/WeatherSettingsFragment;

    invoke-virtual {v0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/WeatherSettingsFragment$7;->this$0:Lcom/android/settings/WeatherSettingsFragment;

    iget-object v1, v1, Lcom/android/settings/WeatherSettingsFragment;->mTargetDB:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 505
    iget-object v0, p0, Lcom/android/settings/WeatherSettingsFragment$7;->this$0:Lcom/android/settings/WeatherSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/WeatherSettingsFragment;->access$000(Lcom/android/settings/WeatherSettingsFragment;)V

    .line 506
    return-void
.end method
