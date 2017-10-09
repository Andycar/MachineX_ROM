.class Lcom/android/settings/FeatureSettings$9;
.super Ljava/lang/Object;
.source "FeatureSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/FeatureSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/FeatureSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/FeatureSettings;)V
    .locals 0

    .prologue
    .line 1144
    iput-object p1, p0, Lcom/android/settings/FeatureSettings$9;->this$0:Lcom/android/settings/FeatureSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/android/settings/FeatureSettings$9;->this$0:Lcom/android/settings/FeatureSettings;

    invoke-static {v0}, Lcom/android/settings/FeatureSettings;->access$800(Lcom/android/settings/FeatureSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 1147
    return-void
.end method
