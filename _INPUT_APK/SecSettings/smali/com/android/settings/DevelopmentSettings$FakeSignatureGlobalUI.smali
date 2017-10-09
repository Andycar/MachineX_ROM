.class Lcom/android/settings/DevelopmentSettings$FakeSignatureGlobalUI;
.super Ljava/lang/Object;
.source "DevelopmentSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DevelopmentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FakeSignatureGlobalUI"
.end annotation


# static fields
.field static final DEBUG_APPLICATIONS_CATEGORY_KEY:Ljava/lang/String; = "debug_applications_category"

.field static final SETTING_SECURE_KEY:Ljava/lang/String; = "allow_fake_signature_global"

.field static final SETTING_SUMMARY:Ljava/lang/String; = "Allow apps to impersonate other apps"

.field static final SETTING_TITLE:Ljava/lang/String; = "Allow signature spoofing"

.field static final SETTING_WARNING:Ljava/lang/String; = "Allowing apps to impersonate other apps has security and privacy implications. Malicious apps can use this functionality to access the private data of other apps.\n\nMake sure that you trust all installed apps that use the \'FAKE_PACKAGE_SIGNATURE\' permission before enabling this setting."


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
