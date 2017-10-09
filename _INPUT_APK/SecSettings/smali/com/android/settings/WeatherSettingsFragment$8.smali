.class Lcom/android/settings/WeatherSettingsFragment$8;
.super Ljava/lang/Object;
.source "WeatherSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/WeatherSettingsFragment;->showWeatherGuidePopup(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/WeatherSettingsFragment;

.field final synthetic val$layout:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settings/WeatherSettingsFragment;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 585
    iput-object p1, p0, Lcom/android/settings/WeatherSettingsFragment$8;->this$0:Lcom/android/settings/WeatherSettingsFragment;

    iput-object p2, p0, Lcom/android/settings/WeatherSettingsFragment$8;->val$layout:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/4 v1, 0x1

    .line 587
    iget-object v2, p0, Lcom/android/settings/WeatherSettingsFragment$8;->val$layout:Landroid/view/View;

    const v3, 0x7f10016a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 588
    .local v0, "check":Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 589
    iget-object v2, p0, Lcom/android/settings/WeatherSettingsFragment$8;->this$0:Lcom/android/settings/WeatherSettingsFragment;

    invoke-static {v2}, Lcom/android/settings/WeatherSettingsFragment;->access$100(Lcom/android/settings/WeatherSettingsFragment;)V

    .line 590
    :cond_0
    iget-object v2, p0, Lcom/android/settings/WeatherSettingsFragment$8;->this$0:Lcom/android/settings/WeatherSettingsFragment;

    invoke-static {v2, v1}, Lcom/android/settings/WeatherSettingsFragment;->access$202(Lcom/android/settings/WeatherSettingsFragment;Z)Z

    .line 591
    iget-object v2, p0, Lcom/android/settings/WeatherSettingsFragment$8;->this$0:Lcom/android/settings/WeatherSettingsFragment;

    invoke-static {v2}, Lcom/android/settings/WeatherSettingsFragment;->access$400(Lcom/android/settings/WeatherSettingsFragment;)Landroid/widget/Switch;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/WeatherSettingsFragment$8;->this$0:Lcom/android/settings/WeatherSettingsFragment;

    invoke-static {v3}, Lcom/android/settings/WeatherSettingsFragment;->access$300(Lcom/android/settings/WeatherSettingsFragment;)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 592
    return-void

    .line 591
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
