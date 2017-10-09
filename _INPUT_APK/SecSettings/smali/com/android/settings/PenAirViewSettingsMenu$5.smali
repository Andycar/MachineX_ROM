.class Lcom/android/settings/PenAirViewSettingsMenu$5;
.super Ljava/lang/Object;
.source "PenAirViewSettingsMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/PenAirViewSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PenAirViewSettingsMenu;


# direct methods
.method constructor <init>(Lcom/android/settings/PenAirViewSettingsMenu;)V
    .locals 0

    .prologue
    .line 486
    iput-object p1, p0, Lcom/android/settings/PenAirViewSettingsMenu$5;->this$0:Lcom/android/settings/PenAirViewSettingsMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu$5;->this$0:Lcom/android/settings/PenAirViewSettingsMenu;

    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu$5;->this$0:Lcom/android/settings/PenAirViewSettingsMenu;

    invoke-static {v1}, Lcom/android/settings/PenAirViewSettingsMenu;->access$100(Lcom/android/settings/PenAirViewSettingsMenu;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/PenAirViewSettingsMenu;->access$200(Lcom/android/settings/PenAirViewSettingsMenu;Landroid/preference/Preference;)V

    .line 491
    return-void
.end method
