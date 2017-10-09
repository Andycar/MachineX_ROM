.class Lcom/android/settings/PreloadAppUpdate$2;
.super Ljava/lang/Object;
.source "PreloadAppUpdate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/PreloadAppUpdate;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PreloadAppUpdate;


# direct methods
.method constructor <init>(Lcom/android/settings/PreloadAppUpdate;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/settings/PreloadAppUpdate$2;->this$0:Lcom/android/settings/PreloadAppUpdate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    const/4 v1, 0x0

    .line 87
    iget-object v0, p0, Lcom/android/settings/PreloadAppUpdate$2;->this$0:Lcom/android/settings/PreloadAppUpdate;

    const-string v2, "com.android.settings.wifi.WifiSettings"

    const v3, 0x7f0a03e2

    const/4 v4, 0x0

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/PreloadAppUpdate;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 89
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 90
    return-void
.end method
