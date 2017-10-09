.class public Lcom/sec/android/app/SecSetupWizard/UseLocationForServices;
.super Ljava/lang/Object;
.source "UseLocationForServices.java"


# static fields
.field private static final GOOGLE_GEOLOCATION_ORIGINS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 20
    .local v0, "arrayOfString":[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "http://www.google.com"

    aput-object v2, v0, v1

    .line 21
    const/4 v1, 0x1

    const-string v2, "http://www.google.co.uk"

    aput-object v2, v0, v1

    .line 22
    sput-object v0, Lcom/sec/android/app/SecSetupWizard/UseLocationForServices;->GOOGLE_GEOLOCATION_ORIGINS:[Ljava/lang/String;

    .line 23
    return-void
.end method

.method private static addGoogleOrigins(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "paramString"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-static {p0}, Lcom/sec/android/app/SecSetupWizard/UseLocationForServices;->parseAllowGeolocationOrigins(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v3

    .line 28
    .local v3, "localHashSet":Ljava/util/HashSet;
    sget-object v0, Lcom/sec/android/app/SecSetupWizard/UseLocationForServices;->GOOGLE_GEOLOCATION_ORIGINS:[Ljava/lang/String;

    .line 29
    .local v0, "arrayOfString":[Ljava/lang/String;
    array-length v1, v0

    .line 30
    .local v1, "i":I
    const/4 v2, 0x0

    .line 32
    .local v2, "j":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 33
    invoke-static {v3}, Lcom/sec/android/app/SecSetupWizard/UseLocationForServices;->formatAllowGeolocationOrigins(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 34
    :cond_0
    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 30
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static formatAllowGeolocationOrigins(Ljava/util/Collection;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "paramCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .local v1, "localStringBuilder":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 44
    .local v0, "localIterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 46
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 47
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 48
    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static parseAllowGeolocationOrigins(Ljava/lang/String;)Ljava/util/HashSet;
    .locals 6
    .param p0, "paramString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 56
    .local v3, "localHashSet":Ljava/util/HashSet;
    const/4 v0, 0x0

    .line 57
    .local v0, "arrayOfString":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 58
    .local v2, "j":I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 60
    const-string v5, "\\s+"

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 61
    array-length v2, v0

    .line 63
    :cond_0
    const/4 v1, 0x0

    .line 65
    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 66
    return-object v3

    .line 67
    :cond_1
    aget-object v4, v0, v1

    .line 68
    .local v4, "str":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 63
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private static removeGoogleOrigins(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "paramString"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-static {p0}, Lcom/sec/android/app/SecSetupWizard/UseLocationForServices;->parseAllowGeolocationOrigins(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v3

    .line 77
    .local v3, "localHashSet":Ljava/util/HashSet;
    sget-object v0, Lcom/sec/android/app/SecSetupWizard/UseLocationForServices;->GOOGLE_GEOLOCATION_ORIGINS:[Ljava/lang/String;

    .line 78
    .local v0, "arrayOfString":[Ljava/lang/String;
    array-length v2, v0

    .line 79
    .local v2, "j":I
    const/4 v1, 0x0

    .line 81
    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 82
    invoke-static {v3}, Lcom/sec/android/app/SecSetupWizard/UseLocationForServices;->formatAllowGeolocationOrigins(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 83
    :cond_0
    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static setGoogleBrowserGeolocation(Landroid/content/Context;Z)V
    .locals 6
    .param p0, "paramContext"    # Landroid/content/Context;
    .param p1, "paramBoolean"    # Z

    .prologue
    .line 91
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 92
    .local v0, "localContentResolver":Landroid/content/ContentResolver;
    const-string v3, "allowed_geolocation_origins"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "str":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 94
    const-string v3, "UseLocationForServices"

    const-string v4, "setGoogleBrowserGeolocation, addGoogleOrigins "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-static {v2}, Lcom/sec/android/app/SecSetupWizard/UseLocationForServices;->addGoogleOrigins(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 96
    const-string v3, "allowed_geolocation_origins"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 113
    .end local v0    # "localContentResolver":Landroid/content/ContentResolver;
    .end local v2    # "str":Ljava/lang/String;
    :goto_0
    return-void

    .line 98
    .restart local v0    # "localContentResolver":Landroid/content/ContentResolver;
    .restart local v2    # "str":Ljava/lang/String;
    :cond_0
    const-string v3, "UseLocationForServices"

    const-string v4, "setGoogleBrowserGeolocation, removeGoogleOrigins "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-static {v2}, Lcom/sec/android/app/SecSetupWizard/UseLocationForServices;->removeGoogleOrigins(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 100
    const-string v3, "allowed_geolocation_origins"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    .end local v0    # "localContentResolver":Landroid/content/ContentResolver;
    .end local v2    # "str":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 111
    .local v1, "localRuntimeException":Ljava/lang/RuntimeException;
    const-string v3, "UseLocationForServices"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to set browser geolocation permissions: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setUseLocationForServices(Landroid/content/Context;Z)Z
    .locals 5
    .param p0, "paramContext"    # Landroid/content/Context;
    .param p1, "paramBoolean"    # Z

    .prologue
    .line 117
    invoke-static {p0, p1}, Lcom/sec/android/app/SecSetupWizard/UseLocationForServices;->setGoogleBrowserGeolocation(Landroid/content/Context;Z)V

    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 120
    .local v2, "localContentResolver":Landroid/content/ContentResolver;
    if-nez p1, :cond_0

    .line 121
    const/4 v1, 0x0

    .line 124
    .local v1, "i":I
    :goto_0
    const-string v3, "use_location_for_services"

    invoke-static {v2, v3, v1}, Lcom/sec/android/app/SecSetupWizard/GoogleSettingsContract$Partner;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 125
    .local v0, "bool":Z
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.google.android.gsf.settings.GoogleLocationSettings.UPDATE_LOCATION_SETTINGS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 126
    return v0

    .line 123
    .end local v0    # "bool":Z
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x1

    .restart local v1    # "i":I
    goto :goto_0
.end method
