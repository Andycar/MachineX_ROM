.class public Lcom/android/settings/wifi/WifiShareProfile$WifiShareProfileApInfo;
.super Ljava/lang/Object;
.source "WifiShareProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiShareProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifiShareProfileApInfo"
.end annotation


# instance fields
.field index:Ljava/lang/String;

.field network:Ljava/lang/String;

.field priority:I

.field ssid:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # Ljava/lang/String;
    .param p3, "n"    # Ljava/lang/String;
    .param p4, "p"    # I

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object p1, p0, Lcom/android/settings/wifi/WifiShareProfile$WifiShareProfileApInfo;->ssid:Ljava/lang/String;

    .line 172
    iput-object p2, p0, Lcom/android/settings/wifi/WifiShareProfile$WifiShareProfileApInfo;->index:Ljava/lang/String;

    .line 173
    iput-object p3, p0, Lcom/android/settings/wifi/WifiShareProfile$WifiShareProfileApInfo;->network:Ljava/lang/String;

    .line 174
    iput p4, p0, Lcom/android/settings/wifi/WifiShareProfile$WifiShareProfileApInfo;->priority:I

    .line 175
    return-void
.end method
