.class Lcom/android/settings/WeatherSettingsFragment$1;
.super Ljava/lang/Object;
.source "WeatherSettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/WeatherSettingsFragment;->onPositiveClick()V
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
    .line 437
    iput-object p1, p0, Lcom/android/settings/WeatherSettingsFragment$1;->this$0:Lcom/android/settings/WeatherSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/settings/WeatherSettingsFragment$1;->this$0:Lcom/android/settings/WeatherSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/WeatherSettingsFragment;->access$000(Lcom/android/settings/WeatherSettingsFragment;)V

    .line 441
    return-void
.end method
