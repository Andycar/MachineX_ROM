.class Lcom/android/settings/BrightnessPreference$2;
.super Landroid/database/ContentObserver;
.source "BrightnessPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/BrightnessPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/BrightnessPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/BrightnessPreference;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/settings/BrightnessPreference$2;->this$0:Lcom/android/settings/BrightnessPreference;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/settings/BrightnessPreference$2;->this$0:Lcom/android/settings/BrightnessPreference;

    invoke-static {v0}, Lcom/android/settings/BrightnessPreference;->access$200(Lcom/android/settings/BrightnessPreference;)V

    .line 150
    return-void
.end method
