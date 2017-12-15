.class public final Landroid/net/wifi/WifiConfiguration$Visibility;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Visibility"
.end annotation


# instance fields
.field public BSSID24:Ljava/lang/String;

.field public BSSID5:Ljava/lang/String;

.field public age24:J

.field public age5:J

.field public num24:I

.field public num5:I

.field public rssi24:I

.field public rssi5:I

.field final synthetic this$0:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiConfiguration;)V
    .registers 3

    .prologue
    .line 818
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->this$0:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 819
    sget v0, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    iput v0, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    .line 820
    sget v0, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    iput v0, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    .line 821
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration$Visibility;)V
    .registers 5
    .param p2, "source"    # Landroid/net/wifi/WifiConfiguration$Visibility;

    .prologue
    .line 823
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->this$0:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 824
    iget v0, p2, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    iput v0, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    .line 825
    iget v0, p2, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    iput v0, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    .line 826
    iget-wide v0, p2, Landroid/net/wifi/WifiConfiguration$Visibility;->age24:J

    iput-wide v0, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->age24:J

    .line 827
    iget-wide v0, p2, Landroid/net/wifi/WifiConfiguration$Visibility;->age5:J

    iput-wide v0, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->age5:J

    .line 828
    iget v0, p2, Landroid/net/wifi/WifiConfiguration$Visibility;->num24:I

    iput v0, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->num24:I

    .line 829
    iget v0, p2, Landroid/net/wifi/WifiConfiguration$Visibility;->num5:I

    iput v0, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->num5:I

    .line 830
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration$Visibility;->BSSID5:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->BSSID5:Ljava/lang/String;

    .line 831
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration$Visibility;->BSSID24:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->BSSID24:Ljava/lang/String;

    .line 832
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 837
    .local v0, "sbuf":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    iget v1, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    sget v2, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    if-le v1, v2, :cond_71

    .line 839
    iget v1, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    iget v1, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->num24:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->BSSID24:Ljava/lang/String;

    if-eqz v1, :cond_36

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->BSSID24:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    :cond_36
    :goto_36
    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    iget v1, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    sget v2, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    if-le v1, v2, :cond_67

    .line 848
    iget v1, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    iget v1, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->num5:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->BSSID5:Ljava/lang/String;

    if-eqz v1, :cond_67

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->BSSID5:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    :cond_67
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 844
    :cond_71
    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_36
.end method
